package com.course.controller;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.course.model.checkstring.Country;

import com.course.model.train.ConcreteBuilder;
import com.course.model.train.Treno;
import com.course.model.train.TrenoBuilder;
import com.course.model.wagons.factory.BaseWagonFactory;


@Controller
@RequestMapping("/")
@Scope("session")
public class WebController {
	@PostMapping("/train")
	@Scope("session")
	public String getTrain(@WebParam String train, @WebParam String country, Model model, HttpSession session) {
		//StandardsDaoImpl test = new StandardsDaoImpl();
		//System.out.println("test get: "+test.getByWord("LPPR"));
		Country checkString = new Country();
		BaseWagonFactory vf = new BaseWagonFactory();
		TrenoBuilder tb = new ConcreteBuilder(vf);
		try {
			//checkString.setParola(country);
			//checkString.selfCheck();
			
			Treno treno = tb.buildTreno(train);

			model.addAttribute("train", train);
			model.addAttribute("country", country);
			model.addAttribute("trainWagons", treno.getVagoni());

			System.out.println("trainWagons: " + treno.getVagoni());
			System.out.println("train: " + train);
			System.out.println("country: " + country);
			System.out.println("session: " +session.getId());

			return "trainView";
		} catch (Exception e) {
			System.out.println("error: " + e.getMessage());
			model.addAttribute("error", e.getMessage());
			return "trainView";
		}
	}
	
	@RequestMapping(
			path="/*",
			method= {RequestMethod.GET, RequestMethod.POST}
	)
	@Scope("session")
	public String getMainPage(@WebParam String username, @WebParam String password, Model model, HttpSession session) {	
			System.out.println("username: " +username);
			System.out.println("password: " +password);
			System.out.println("session: " +session.getId());
			if (username != null && username != "" && password != null && password != ""){		
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				session.setMaxInactiveInterval(1000*60*20);
				return "profile";  
			} else {
				session.invalidate();
				return "login";
			}
	}
	
	@RequestMapping(
			path = {"/insertTrain"},
			method= {RequestMethod.GET, RequestMethod.POST}
	)
	@Scope("session")
	public String insertTrain(HttpSession session) {
		
		return "insertTrain";
	}
	
	
}
