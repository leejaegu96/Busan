package com.decemelev.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decemelev.infra.common.constants.Constants;
import com.decemelev.infra.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
		vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy() );
		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		System.out.println("컨트롤러 출");
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShUseNy(): " + vo.getShUseNy());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		setSearchAndPaging(vo);
//		vo.setParamsPaging(service.selectOneCount(vo));
		System.out.println("컨트롤러 중간");
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		
		
		System.out.println("컨트롤러 도");
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
//	@RequestMapping(value = "/codeGroupForm", method = RequestMethod.GET)
//	public String a(Locale locale, Model model) {
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}
	
	
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
//		if(vo.getMainKey().equals("0") || vo.getMainKey().equals("")) {
//			//insert
//		} else {
//			CodeGroup item = service.selectOne(vo);
//			model.addAttribute("item", item);
//		}
		
		
		System.out.println("vo.getIfcgSeq(): " + vo.getIfcgSeq());
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
//	@RequestMapping(value = "codeGroupView")
//	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
//		
//		CodeGroup result = service.selectOne(vo);
//		
//		model.addAttribute("item", result);
//		
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}
	
	
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setIfcgSeq(dto.getIfcgSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/codeGroup/codeGroupList";
		
//		int result = service.insert(dto);
//		System.out.println("controller result: " + result);
//		
//		return "redirect:/codeGroup/codeGroupList";
		
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("업데이트 가즈아!");
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		model.addAttribute("item", model);
		
		return "redirect:/codeGroup/codeGroupList";
		
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto) throws Exception {
		
		int result = service.uelete(dto);
		System.out.println("Controller Result : " + result);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String nationalityDele(CodeGroupVo vo) throws Exception {
		
		System.out.println("dd왜안돼");
		int result = service.delete(vo);
		System.out.println("Controller Result : " + result);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	
}
