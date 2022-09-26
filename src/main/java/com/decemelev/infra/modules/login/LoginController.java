package com.decemelev.infra.modules.login;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value="/login/")
public class LoginController {
	
	@Autowired
	LoginServiceImpl service;
	
	@RequestMapping(value="login")
	public String login(Model model) throws Exception {
		
		List<Login> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/login/user/login";
	} 
	
	@RequestMapping(value="signUp")
	public String signUp(Model model) throws Exception {
		
		return "infra/login/user/signUp";
	} 
	
	
	/*
	 * @RequestMapping(value="signUp", method = RequestMethod.GET) public String
	 * signUp(Locale locale, Model model) { return "infra/login/user/signUp"; }
	 */
	@RequestMapping(value="findIdPassword", method = RequestMethod.GET)
	public String findIdPassword(Locale locale, Model model) {
		return "infra/login/user/findIdPassword";
	}
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value = "loginInst")
	public String loginInst(Login dto) throws Exception {
		int result = service.insert(dto);
		return "redirect:/login/login";
	}
	
}
