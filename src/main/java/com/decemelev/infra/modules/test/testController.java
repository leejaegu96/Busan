package com.decemelev.infra.modules.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {

	@RequestMapping(value = "index")
	public String index(Model model) throws Exception {
		
		return "infra/test/xdmin/index";
	}
	@RequestMapping(value = "meeting")
	public String meeting(Model model) throws Exception {
		
		return "infra/test/xdmin/meeting";
	}
	
}
