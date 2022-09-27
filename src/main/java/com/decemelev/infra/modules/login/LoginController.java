package com.decemelev.infra.modules.login;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.decemelev.infra.common.constants.Constants;
import com.decemelev.infra.common.util.UtilSecurity;


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
	
	@ResponseBody
	@RequestMapping(value="checkId")
	public Map<String, Object> checkId(Login dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectOneIdCheck(dto);
		
		if(result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		System.out.println("returnMap : " + returnMap);
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Login dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		Login rtLogin = service.selectOneId(dto);
		System.out.println(rtLogin);
		
		if (rtLogin != null) {
			Login rtLogin2 = service.selectOneLogin(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
			httpSession.setAttribute("sessSeq", rtLogin2.getIfmmSeq());
			httpSession.setAttribute("sessId", rtLogin2.getIfmmId());
			httpSession.setAttribute("sessName", rtLogin2.getIfmmName());
			
			System.out.println("success");
			returnMap.put("rt", "success");
		} else {
			System.out.println("fail");
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
}
