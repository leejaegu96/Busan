package com.decemelev.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decemelev.infra.common.util.UtilDateTime;
import com.decemelev.infra.modules.code.CodeServiceImpl;

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
		model.addAttribute("item", result);
		
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
	
//	엑셀 다운로드
	@RequestMapping(value="excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq", "Id", "Name", "Email", "EmailDomain", "Gender", "Dob", "PhoneCarrier", "PhoneNumber", "MailNY", "SmsNY"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getIfmmSeq() != null) cell.setCellValue(Integer.parseInt(list.get(i).getIfmmSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getIfmmId() != null) cell.setCellValue(list.get(i).getIfmmId());
	        	
	        	cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getIfmmName() != null) cell.setCellValue(list.get(i).getIfmmName());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getIfmmEmail() != null) cell.setCellValue(list.get(i).getIfmmEmail());
	        	
	            cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmEmailDomain() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfmmEmailDomain()));
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfmmGender()));
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmDob() != null) cell.setCellValue(list.get(i).getIfmmDob());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmPhoneCarrier() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfmmPhoneCarrier()));   
	            
	            cell = row.createCell(8);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmPhone() != null) cell.setCellValue(list.get(i).getIfmmPhone());
	            
	            cell = row.createCell(9);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmMailNy() != null) cell.setCellValue(list.get(i).getIfmmMailNy());
	            
	            cell = row.createCell(10);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmSmsNy() != null) cell.setCellValue(list.get(i).getIfmmSmsNy());
	            
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
}
