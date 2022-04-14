package com.course.controller;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.course.dao.TrainDao;
import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;
import com.course.model.checkstring.Country;
import com.course.model.train.ConcreteBuilder;
import com.course.model.train.Treno;
import com.course.model.train.TrenoBuilder;
import com.course.model.wagons.factory.BaseWagonFactory;

@Controller
@RequestMapping("/")
@Scope("session")
public class WebController {
	
	private boolean isLogged(HttpSession session) {
		if (session.getAttribute("username") != null && session.getAttribute("password") != null
				&& session.getAttribute("username") != "" && session.getAttribute("password") != "") {
			return true;
		} else {
			return false;
		}

	}

	@GetMapping("/*")
	public String getHomePage() {
		return "home";
	}
	
	@GetMapping("/admin")
	public String getAdminPage(HttpSession session) {
		if (isLogged(session)) {
			return "admin";
		} else {
			return "redirect:/";
		}
		
	}


	@PostMapping("/login")
	public String getProfilePage(@WebParam String username, @WebParam String password, Model model, HttpSession session) {
		Dao dao = DaoImpl.getInstance();
		System.out.println("U: " + username + " - P: " + password + "- S: " + session.getId());
		if (dao.verifyUser(username, password)) {
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			session.setMaxInactiveInterval(1000 * 60 * 20);
			return "redirect:/profile";
		} else {
			session.invalidate();
			model.addAttribute("error", "Wrong username or password, please retry");
			return "login";
		}
	}

	@GetMapping("/login")
	public String getLoginFormPage(Model model) {
		return "login";
	}

	@GetMapping("/profile")
	public String getProfileFormPage(Model model, HttpSession session) {
		model.addAttribute("usersTrains", DaoImpl.getInstance().getTrains((String)session.getAttribute("username")));
		if (isLogged(session)) {
			return "profile";
		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/insertTrain")
	@Scope("session")
	public String insertTrain(Model model, HttpSession session) {
		if (isLogged(session)) {
			return "insertTrain";
		} else {
			return "redirect:/";
		}
	}

	@PostMapping("/train")
	@Scope("session")
	public String getTrain(@WebParam String train, @WebParam String country, Model model, HttpSession session) {
		Dao dao=DaoImpl.getInstance();
		//TrainDao trainFromDb = (TrainDao) dao.getAllTrains().toArray()[1];
		BaseWagonFactory vf = new BaseWagonFactory();
		TrenoBuilder tb = new ConcreteBuilder(vf);
		//System.out.println("getTrainsFromDB: " + trainFromDb.getSigla());
		try {
			if(dao.isCountry(country)) { 
				Treno treno = tb.buildTreno(train);
				
				model.addAttribute("train", train);
				model.addAttribute("country", country);
				model.addAttribute("trainWagons", treno.getVagoni());
				model.addAttribute("trainSize", treno.getVagoni().size());

				System.out.println("trainWagons: " + treno.getVagoni());
				System.out.println("train: " + train);
				System.out.println("country: " + country);
				System.out.println("session: " +session.getId());
			} else {
				Country cntry = new Country();
				cntry.setParola(country);
				String valid = cntry.selfCheck();

				System.out.println("valid : " + valid);
				if(valid == null) {
					Treno treno = tb.buildTreno(train);
					// STOP : Nazione non trovata
					model.addAttribute("train", train);
					model.addAttribute("country", null);
					model.addAttribute("trainWagons", treno.getVagoni());
					model.addAttribute("trainSize", treno.getVagoni().size());
				} else {
					Treno treno = tb.buildTreno(train);
					model.addAttribute("train", train);
					model.addAttribute("country", valid);
					model.addAttribute("algorithm", cntry);
					model.addAttribute("trainWagons", treno.getVagoni());
					model.addAttribute("trainSize", treno.getVagoni().size());
				}
			}
			
			return "trainView";
		} catch (Exception e) {
			System.out.println("error: " + e.getMessage());
			model.addAttribute("error", e.getMessage());
			return "trainView";
		}
	}

	@GetMapping("/register")
	public String getRegisterPage() {
		return "register";
	}

}
