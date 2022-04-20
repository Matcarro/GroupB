package com.course.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.course.controller.test.StringListContainer;
import com.course.dao.TrainDao;
import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;
import com.course.model.checkstring.CheckStringFactory;
import com.course.model.checkstring.EsitoCheckString;
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

	@GetMapping("*")
	public String getHomePage(Model model, HttpSession session) {
		model.addAttribute("UserLogged", isLogged(session));
		return "home";
	}

	@PostMapping("/admin") 
	public String getAdminPagePost(@WebParam String deleteUser, @WebParam String deleteTrain, @WebParam String deleteCorrection, Model model, HttpSession session) {
		Dao dao = DaoImpl.getInstance();
		if (deleteUser != null) {
			dao.deleteUser(deleteUser);
		} else if (deleteTrain != null) {
			dao.deleteTrain(Integer.parseInt(deleteTrain));
		} else if (deleteCorrection != null) {
			System.out.println(deleteCorrection);
			dao.deleteSearch(deleteCorrection);
		}
		return "redirect:/admin";
	}
	
	@GetMapping("/admin")
	public String getAdminPage(Model model, HttpSession session) {
		Dao dao = DaoImpl.getInstance();
		if (isLogged(session)) {
			if(dao.isAdmin((String)session.getAttribute("username"))==true) {
				session.setAttribute("countriesFull", dao.getAllSearches());
				session.setAttribute("trainsFull", dao.getAllTrains());
				session.setAttribute("usersFull", dao.serviceUserView()); 
				return "controlPanel";
			} else {
				return "profile";
			}
		} else {
			return "redirect:/login";
		}
	}

	@PostMapping("/login")
	public String getProfilePage(@WebParam String username, @WebParam String password, Model model, HttpSession session) {
		Dao dao = DaoImpl.getInstance();
		if (dao.verifyUser(username, password)) {
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			session.setMaxInactiveInterval(1000 * 60 * 20);
			session.setAttribute("isAdmin", dao.isAdmin(username));
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
	
	@PostMapping("/register")
	public String getLoginFormPage(@WebParam String name, @WebParam String surname, @WebParam Date date, @WebParam String email,@WebParam String password,Model model) {
		Dao dao=DaoImpl.getInstance();
		if(dao.insertUser(email, password, name, surname, date)==true)
			return "login";
		model.addAttribute("emailError","You're already registered");
		return "register";
	}
	
	@PostMapping("/profile")
	public String getProfilePost(@WebParam String deleteTrain, Model model, HttpSession session) {
		Dao dao=DaoImpl.getInstance();
		return "profile";
	}

	@GetMapping("/profile")
	public String getProfileFormPage(Model model, HttpSession session) {
		Collection<TrainDao> userTrains =  DaoImpl.getInstance().getTrains((String) session.getAttribute("username"));
		if( userTrains != null) {
			model.addAttribute("usersTrains", userTrains);
		}
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
			Dao dao = DaoImpl.getInstance();
			BaseWagonFactory vf = new BaseWagonFactory();
			TrenoBuilder tb = new ConcreteBuilder(vf);
			try {
				Treno treno = tb.buildTreno(train);
				model.addAttribute("train", train);
				model.addAttribute("trainWagons", treno.getVagoni());
				model.addAttribute("trainSize", treno.getVagoni().size());
				
				EsitoCheckString esito  = new EsitoCheckString();
				
				if (dao.isCountry(country)) {
					System.out.println("---> " + country + " : DB found!");
					esito.setCorrect(country);	
					
				} else {
					System.out.println("---> " + country + " : DB not found! \n\n Algoritms chain >>>");
					esito = CheckStringFactory.getAlgorithm().check(country, esito);
					model.addAttribute("confirmCountry", 1);	
				}

				model.addAttribute("esito", esito);	
				
				System.out.println("<<< Algoritms chain \n\nWeb > Model - trainWagons: " + treno.getVagoni());
				System.out.println("Web > Model - train      : " + train);
				System.out.println("Web > Model - country    : " + esito.getCorrect());
				System.out.println("Web > Model - session    : " + session.getId());
				
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
	
	@GetMapping("/country")
	@Scope("session")
	public String getCountryPage(@WebParam String country, Model model, HttpSession session) {
		if(isLogged(session)) {
			model.addAttribute("country", country);
			return "country";
		}
		return "redirect:/";
	}
	
	//ZONA TESTING
	
	//Pagina di testing 
	@GetMapping("/test")
	public String getTest() {
		return "testPageRest";
	}
	
	//Rende disponibile il servizio a tutti gli url
	@CrossOrigin(origins = "*")
	//Servizio rest per l'oggetto
	@RequestMapping(
			value = "/getString", method = RequestMethod.GET,
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
