package com.decemelev.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decemelev.infra.common.util.UtilDateTime;
import com.decemelev.infra.modules.codegroup.CodeGroup;
import com.decemelev.infra.modules.codegroup.CodeGroupServiceImpl;
import com.decemelev.infra.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service; 
	@Autowired
	CodeGroupServiceImpl service2;

	public void setSerchAndPaging(CodeVo vo) throws Exception {
		/* vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy() ); */
		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShUseNy(): " + vo.getShUseNy());
		
		setSerchAndPaging(vo);
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Code dto, Model model) throws Exception {
		
		System.out.println("vo.getIfcdSeq(): " + vo.getIfcdSeq());
		/*
		 * List<CodeGroup> list = service2.selectList();
		 */
		List<Code> result1 = service.selectname(dto);
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("name", result1);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.insert(dto);
		
		vo.setIfcdSeq(dto.getIfcdSeq());
		
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";
		
	}
	
	@RequestMapping(value="codeUpdt")
	public String CodeUpdt(CodeVo vo, Code dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		model.addAttribute("item", model);
		System.out.println("Controller update Result : " + result);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(CodeVo vo, Code dto) throws Exception {
		
		int result = service.uelete(dto);
		System.out.println("Controller uelete Result : " + result);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String nationalityDele(CodeVo vo) throws Exception {
		
		int result = service.delete(vo);
		System.out.println("Controller delete Result : " + result);
		return "redirect:/code/codeList";
	}

	
}