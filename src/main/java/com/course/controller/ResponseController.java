package com.course.controller;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/res")
public class ResponseController {
	@GetMapping("/checkResponseSpring")
	//Param presi dalla queryString
	public String paeseInputSpring(@WebParam String input, @WebParam String algorithm, Model model) {
		System.out.println("input: " +input);
		System.out.println("algorithm: " +algorithm);
		model.addAttribute("messaggio", input);
		System.out.println("messaggio: " +model.getAttribute("messaggio"));
		return "esempio";
	}
	
	@GetMapping("/checkResponseServlet")
	//Param presi dalla queryString
	public String paeseInputServlet(HttpServletRequest request) {
		String input = (String) request.getAttribute("input");
		System.out.println("input: " +input);
		request.setAttribute("messaggio", input);
		return "esempio";
	}
	
	@GetMapping("/checkVar/{input}/{algorithm}")
	//Param presi dalla queryString
	public String paeseInputVar(@PathVariable String input, @PathVariable String algorithm) {
		System.out.println("input: " +input);
		System.out.println("algorithm: " +algorithm);
		return "esempio";
	}
	
//	@PostMapping(
//			path={"/checkBean"},
//			//method= {RequestMethod.GET, RequestMethod.POST},
//			//params = {"nome=Mario", "cognome=Rossi"}, 
//			//headers = {"Accept=application/json"},
//			//produces = {"application/json"},
//			//produces = {MediaType.APPLICATION_JSON_VALUE} 
//			consumes = {MediaType.APPLICATION_JSON_VALUE} 
//	)
//	//Param presi dalla queryString
//	public String paeseInputObject(@RequestBody Rettangolo rettangolo) {
//		System.out.println("input: " +rettangolo);
//		return "esempio";
//	}
}
