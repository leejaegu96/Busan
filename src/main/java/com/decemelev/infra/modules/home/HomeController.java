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
	public String home(Model model) throws Exception {
		
		List<Home> list = service.selectList();
		model.addAttribute("list", list);
		
		List<Home> item = service.selectContents();
		model.addAttribute("item", item);
		
		
		return "infra/home/user/home";
		
	}

	
	@RequestMapping(value = "test")
	public String test(Model model) throws Exception {
		
		List<Home> test = service.selectTest();
		model.addAttribute("test", test);
		
		return "infra/home/user/test";
		
	}
	
	@RequestMapping(value = "rank")
	public String rank(Model model) throws Exception {
		
		List<Home> rank = service.selectRank();
		model.addAttribute("rank", rank);
		
		return "infra/home/user/rank";
		
	}
	
	@RequestMapping(value = "translate")
	public String translate(Model model) throws Exception {
		
		return "infra/home/user/translate";
	}
	
	
	
	
				
}
