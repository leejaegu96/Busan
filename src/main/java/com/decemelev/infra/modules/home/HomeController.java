package com.decemelev.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/home/")
public class HomeController {
	
	@Autowired
	HomeServiceImpl service;
	
	@RequestMapping(value = "home")
	public String homeList(Model model) throws Exception {
		
		List<Home> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/home/user/home";
		
	}

}
