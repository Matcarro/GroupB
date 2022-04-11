package com.corso.springMVC.httpController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jsp")
public class RequestCssController {
	@GetMapping("/mainPage")
	public String getMainPageCss() {
		return "/mainPage";
	}
}
