package com.course.controller;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/req")
public class RequestController {
	@GetMapping("/checkSpring")
	//Param presi dalla queryString
	public String paeseInputSpring(@WebParam String input, @WebParam String algorithm) {
		System.out.println("input: " +input);
		System.out.println("algorithm: " +algorithm);
		return "esempio";
	}
	
	@GetMapping("/checkServlet")
	//Param presi dalla queryString
	public String paeseInputServlet(HttpServletRequest request) {
		System.out.println("input: " +request.getParameter("input"));
		System.out.println("algorithm: " +request.getParameter("algorithm"));
		return "esempio";
	}
	
	@GetMapping("/checkVar/{input}/{algorithm}")
	//Param presi dalla queryString
	public String paeseInputVar(@PathVariable String input, @PathVariable String algorithm) {
		System.out.println("input: " +input);
		System.out.println("algorithm: " +algorithm);
		return "esempio";
	}
}
