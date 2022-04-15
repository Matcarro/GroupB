package com.course.controller;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.course.controller.test.StringListContainer;
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
	public String getHomePage(Model model, HttpSession session) {
		model.addAttribute("UserLogged", isLogged(session));
		return "home";
	}

	@GetMapping("/admin")
	public String getAdminPage(Model model, HttpSession session) {
		Dao dao = DaoImpl.getInstance();
		if (isLogged(session)) {
			session.setAttribute("countriesFull", dao.getAllCountries());
			session.setAttribute("trainsFull", dao.getAllTrains());
			// session.setAttribute("trainsFull", dao.getUsersView()); //TODO: match with
			// Persistance
			return "controlPanel";
		} else {
			return "redirect:/login";
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
			model.addAttribute("username", username);
			return "login";
		}
	}

	@GetMapping("/login")
	public String getLoginFormPage(Model model, HttpSession session) {
		if (isLogged(session)) {
			return "redirect:/profile";
		} else {
			return "login";
		}
	}
	
	@GetMapping("/logout")
	public String getLogoutAction(Model model, HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}

	@GetMapping("/profile")
	public String getProfileFormPage(Model model, HttpSession session) {
		model.addAttribute("usersTrains",
				DaoImpl.getInstance().getTrains((String) session.getAttribute("username")).toArray());
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
		if (isLogged(session)) {
			Dao dao = DaoImpl.getInstance();
			BaseWagonFactory vf = new BaseWagonFactory();
			TrenoBuilder tb = new ConcreteBuilder(vf);
			try {
				Treno treno = tb.buildTreno(train);
				model.addAttribute("train", train);
				
				model.addAttribute("trainWagons", treno.getVagoni());
				model.addAttribute("trainSize", treno.getVagoni().size());
				if (dao.isCountry(country)) {
					model.addAttribute("country", country);			
				} else {
					Country cntry = new Country();
					cntry.setParola(country);
					String valid = cntry.selfCheck();

					System.out.println("valid : " + valid);
					if (valid == null) {
						// STOP : Nazione non trovata
						model.addAttribute("country", null);
					} else {
						model.addAttribute("country", valid);
						model.addAttribute("algorithm", cntry);
					}
				}
				
				System.out.println("trainWagons: " + treno.getVagoni());
				System.out.println("train: " + train);
				System.out.println("country: " + country);
				System.out.println("session: " + session.getId());
				return "trainView";
			} catch (Exception e) {
				System.out.println("error: " + e.getMessage());
				model.addAttribute("error", e.getMessage());
				return "trainView";
			}
		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/register")
	public String getRegisterPage() { 
		return "register";
	}
	
	//ZONA TESTING
	
	@GetMapping("/test")
	public String getTest() {
		return "testPageRest";
	}
	
	@RequestMapping(value = "/getString", method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE
    )
	@ResponseBody
	public StringListContainer getString() {
		List<String> setOfString = new ArrayList<String>();
		setOfString.add("ciao");
		setOfString.add("test");
		StringListContainer myString = new StringListContainer();
		myString.setStringList(setOfString);
		return myString;
	}

}
