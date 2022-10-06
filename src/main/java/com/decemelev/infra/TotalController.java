package com.decemelev.infra;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TotalController {
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String selectForm(Locale locale, Model model) {
		return "infra/login/user/selectForm";
	}
	
}
