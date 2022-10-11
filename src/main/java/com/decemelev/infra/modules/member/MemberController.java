package com.decemelev.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decemelev.infra.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	public void setSearchAndPaging(MemberVo vo) throws Exception {
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("컨트롤러 출");
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShUseNy(): " + vo.getShUseNy());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		setSearchAndPaging(vo);
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberForm")
	public String MemberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		
		return "infra/member/xdmin/memberForm";
	}
	
	/* @SuppressWarnings(value = {"all"}) */
	@RequestMapping(value = "memberInst", method = RequestMethod.POST)
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setIfmmSeq(dto.getIfmmSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo); 
		
		return "redirect:/member/memberList";
		
	}
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.update(dto);
		System.out.println("Controller update Result : " + result);
		redirectAttributes.addFlashAttribute("vo",vo);
		model.addAttribute("item", model);
		
		System.out.println("업데이트 !");
		 return "redirect:/member/memberList"; 

		
	}
	
	@RequestMapping(value = "memberUele")
	public String memberUele(MemberVo vo, Member dto) throws Exception {
		
		int result = service.uelete(dto);
		System.out.println("Controller Result : " + result);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberDele")
	public String nationalityDele(MemberVo vo) throws Exception {
		
		int result = service.delete(vo);
		System.out.println("Controller Result : " + result);
		return "redirect:/member/memberList";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectOneIdCheck(dto);
		
		System.out.println("asdf");
		if(result > 0) {
			System.out.println("ss");
			returnMap.put("rt", "fail");
			System.out.println("ss");
		} else {
			System.out.println("dd");
			returnMap.put("rt", "success");
			System.out.println("dd");
			
		}
		System.out.println("returnMap : " + returnMap);

		return returnMap;
	}
}
