package com.decemelev.infra.modules.login;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/login/")
public class LoginController {
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "infra/login/user/login";
	} 
	
	@RequestMapping(value="signUp", method = RequestMethod.GET)
	public String signUp(Locale locale, Model model) {
		return "infra/login/user/signUp";
	}
	
	@RequestMapping(value="findIdPassword", method = RequestMethod.GET)
	public String findIdPassword(Locale locale, Model model) {
		return "infra/login/user/findIdPassword";
	}
	
}
