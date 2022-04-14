package com.course.controller;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.course.dao.TrainDao;
import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;

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

	@RequestMapping(path = "/*", method = { RequestMethod.GET })
	public String getHomePage() {
		return "home";
	}

	@PostMapping("/login")
	public String getProfilePage(@WebParam String username, @WebParam String password, Model model,
			HttpSession session) {
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
	public String getLoginPage(@WebParam String error, Model model) {
		System.out.println(error);
		return "login";
	}

	@GetMapping("/profile")
	public String getProfilePageTrue(Model model, HttpSession session) {
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
			TrainDao trainFromDb = (TrainDao) dao.getAllTrains().toArray()[1];
			BaseWagonFactory vf = new BaseWagonFactory();
			TrenoBuilder tb = new ConcreteBuilder(vf);
			System.out.println("getTrainsFromDB: " + trainFromDb.getSigla());
			try {
				if (dao.isCountry(country)) {
					Treno treno = tb.buildTreno(train);

					model.addAttribute("train", train);
					model.addAttribute("country", country);
					model.addAttribute("trainWagons", treno.getVagoni());
					model.addAttribute("trainSize", treno.getVagoni().size());

					System.out.println("trainWagons: " + treno.getVagoni());
					System.out.println("train: " + train);
					System.out.println("country: " + country);
					System.out.println("session: " + session.getId());
				}

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

}
