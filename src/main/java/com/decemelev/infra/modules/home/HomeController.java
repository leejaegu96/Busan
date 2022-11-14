package com.decemelev.infra.modules.home;


import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.net.http.HttpRequest;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decemelev.infra.common.util.UtilDateTime;
import com.decemelev.infra.common.util.UtilSecurity;
import com.decemelev.infra.modules.code.CodeServiceImpl;
import com.decemelev.infra.modules.member.MemberVo;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
/* @RequestMapping(value="/home/") */
public class HomeController {
	
	@Autowired
	HomeServiceImpl service;
	
	public void setSearchAndPaging(HomeVo vo, HttpServletRequest httpServletRequest) throws Exception {
		HttpSession httpSession =  httpServletRequest.getSession();
		sessSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setMainKey(sessSeq);
		
		vo.setParamsPagingMypage(service.selectWordCount(vo));
	}
	public void setSearchAndPagingWord(HomeVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 2 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()) );
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()) );
		
		vo.setParamsPagingMypage(service.WordCount(vo));
	}
	
	@RequestMapping(value = "/home/toast")
	public String toast(Model model) throws Exception {
		
		return "infra/home/user/toast";
	}
	
	
	@RequestMapping(value = "/home/home")
	public String home(Model model) throws Exception {
		return "infra/home/user/home";
	}
	
	@RequestMapping(value = "/word/wordList")
	public String wordList(@ModelAttribute("vo") HomeVo vo, Model model, HttpServletRequest httpServletRequest) throws Exception {
		
		setSearchAndPagingWord(vo);
		
		List<Home> list = service.wordList(vo);
		model.addAttribute("list", list);
		
		List<Home> item = service.wordContents(vo);
		model.addAttribute("item", item);
		
		return "infra/word/xdmin/wordList";
	}
	@RequestMapping(value = "/word/wordForm")
	public String wordForm(@ModelAttribute("vo") HomeVo vo, Model model) throws Exception {
		System.out.println("vo.getSdwSeq(): " + vo.getSdwSeq());
		
		Home result = service.selectOneWord(vo);
		model.addAttribute("item", result);
		
		List<Home> list = service.selectOneWordList(vo);
		model.addAttribute("list", list);
		
		return "infra/word/xdmin/wordForm";
	}
	
//	word insert
	
//	word insert
	
	@RequestMapping(value = "/test/testList")
	public String testList(Model model) throws Exception {
		
		return "infra/test/xdmin/testList";
	}
	@RequestMapping(value = "/test/testForm")
	public String testForm(Model model) throws Exception {
		
		return "infra/test/xdmin/testForm";
	}

	
	@RequestMapping(value = "/home/test")
	public String test( @ModelAttribute("vo") HomeVo vo, Home dto, Model model, HttpServletRequest httpServletRequest) throws Exception {
		
		List<Home> test = service.selectTest();
		model.addAttribute("test", test);
		
		HttpSession httpSession =  httpServletRequest.getSession();
		sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setMainKey(sessSeq);
		
		Home list = service.memberList(vo);
		model.addAttribute("list", list);
		
		return "infra/home/user/test";
		
	}
	
	@ResponseBody
	@RequestMapping(value="/home/testDate")
	public Map<String, Object> testDate(Home dto, @RequestParam("sddDateChoice") String sddDateChoice, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		dto.setSddDateChoice(sddDateChoice);
		System.out.println("처음: " + sddDateChoice);
		List<Home> result = service.selectTest(dto);
		if(result != null) {
			returnMap.put("rt", "success");
			returnMap.put("tt", result);
		} else {
			returnMap.put("rt", "fail");
		}
		
		System.out.println("returnMap : " + returnMap);
		System.out.println(sddDateChoice);
		model.addAttribute("result", result);
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/home/wordDate")
	public Map<String, Object> wordDate(Home dto, @RequestParam("sddDateChoice") String sddDateChoice, Model model, HttpServletRequest httpServletRequest) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		HttpSession httpSession =  httpServletRequest.getSession();
		sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		dto.setMainKey(sessSeq);
		dto.setSddDateChoice(sddDateChoice);
		System.out.println("처음: " + sddDateChoice);
		List<Home> list = service.selectList(dto);
		model.addAttribute("list", list);
		List<Home> result = service.selectContents(dto);
		List<Home> favorite = service.favoriteList(dto);
		if(result != null) {
			returnMap.put("rt", "success");
			returnMap.put("tt", result);
			returnMap.put("rr", list);
			returnMap.put("yy", favorite);
		} else {
			returnMap.put("rt", "fail");
		}
		
		System.out.println("returnMap : " + returnMap);
		System.out.println(sddDateChoice);
		model.addAttribute("result", result);
		return returnMap;
	}
	
	@RequestMapping(value = "/home/word")
	public String word(Home dto, Model model) throws Exception {
		List<Home> list = service.selectList(dto);
		model.addAttribute("list", list);
		
		List<Home> item = service.selectContents(dto);
		model.addAttribute("item", item);
		return "infra/home/user/word";
	}
	
	@RequestMapping(value = "/home/rank")
	public String rank(@ModelAttribute("vo") HomeVo vo, Model model, HttpServletRequest httpServletRequest) throws Exception {
		
		List<Home> rank = service.selectRank();
		model.addAttribute("rank", rank);
		List<Home> rank1 = service.selectRank1();
		model.addAttribute("rank1", rank1);
		
		
		HttpSession httpSession =  httpServletRequest.getSession();
		sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setMainKey(sessSeq);
		
		List<Home> rank2 = service.selectRankDate(vo);
		model.addAttribute("score", rank2);
		Home list = service.memberList(vo);
		model.addAttribute("list", list);
		
		return "infra/home/user/rank";
		
	}
	
	@RequestMapping(value = "/home/translate")
	public String translate(Model model) throws Exception {
		
		return "infra/home/user/translate";
	}
	
	
	public String sessSeq = "";
	@RequestMapping(value = "/home/mypage")
	public String mypage(@ModelAttribute("vo") HomeVo vo, Home dto, Model model, HttpServletRequest httpServletRequest) throws Exception {
		
		HttpSession httpSession =  httpServletRequest.getSession();
		sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setMainKey(sessSeq);
		setSearchAndPaging(vo, httpServletRequest);
		
		List<Home> list1 = service.myWordList(vo);
		model.addAttribute("list1", list1);
		
		List<Home> item1 = service.myWordContents(vo);
		model.addAttribute("item1", item1);
		
		Home list = service.memberList(vo);
		model.addAttribute("list", list);
		
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		
		return "infra/home/user/mypage";
	}
	
	@RequestMapping(value = "/home/wordMultiDele")
	public String wordMultiDele(HomeVo vo, RedirectAttributes redirectAttributes) throws Exception {

		for (String checkboxSeq : vo.getCheckboxSeqArray()) {
			vo.setSdfSeq(checkboxSeq);
			service.delete(vo);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/home/mypage";
	}
	
	@RequestMapping(value = "/home/homeUpdt")
	public String homeUpdt(Home dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("업데이트 가즈아!");
		int result = service.update(dto);
		
		model.addAttribute("list", result);
		System.out.println("Controller update Result : " + result);
		
		return "redirect:/home/mypage";
	}
	@RequestMapping(value = "/home/homePwdUpdt")
	public String homePwdUpdt(Home dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("업데이트 가즈아!");
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		int result = service.pwdUpdate(dto);
		
		model.addAttribute("list", model);
		System.out.println("Controller pwdUpdate Result : " + result);
		
		return "redirect:/login/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/home/checkPwd")
	public Map<String, Object> checkId(Home dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		int result = service.selectOnePwdCheck(dto);
		if(result > 0) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		System.out.println("returnMap : " + returnMap);
		return returnMap;
	}
	
	@RequestMapping(value="/home/testInst")
	public String testInst(Home dto, RedirectAttributes redirectAttributes) throws Exception{
		
		int result = service.insert(dto);
		dto.getInfrMember_ifmmSeq();
		dto.getSdwSeq();
		
		System.out.println("controller result: " + result);
		return "redirect:/home/test";
	}
	
	@ResponseBody
	@RequestMapping(value="/home/insertWord")
	public Map<String, Object> likeInsert(@ModelAttribute("vo") HomeVo vo,Home dto, @RequestParam("sdWord_sdwSeq") String sdWord_sdwSeq, HttpServletRequest httpServletRequest) throws Exception{
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		HttpSession httpSession =  httpServletRequest.getSession();
		sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setMainKey(sessSeq);
		dto.setSdWord_sdwSeq(sdWord_sdwSeq);
		int result = service.selectOneWordCount(vo);
		System.out.println("result :" + result);
		if (result == 0) {
			service.likeInsert(dto);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	
	
	@RequestMapping(value="/home/likeUpdate")
	public String likeUpdate(Home dto, RedirectAttributes redirectAttributes) throws Exception{
		
		int result = service.likeUpdate(dto);
		
		System.out.println("controller result: " + result);
		return "redirect:/home/word";
	}
	
	@ResponseBody
	@RequestMapping(value = "/home/trans")
	public String trans(@RequestParam("str") String str) throws Exception {
		
        String clientId = "PV_PfpxB6fnn9cN4JYSe";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "pBjz_im_VU";//애플리케이션 클라이언트 시크릿값";

        String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
        String text;
        try {
            text = URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("인코딩 실패", e);
        }

        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);

        String responseBody = post(apiURL, requestHeaders, text);

        System.out.println(responseBody.getClass().getName());
        System.out.println(responseBody);
        
        return responseBody;
    }

    private static String post(String apiUrl, Map<String, String> requestHeaders, String text){
        HttpURLConnection con = connect(apiUrl);
        String postParams = "source=ko&target=en&text=" + text; //원본언어: 한국어 (ko) -> 목적언어: 영어 (en)
        try {
            con.setRequestMethod("POST");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }

            con.setDoOutput(true);
            try (DataOutputStream wr = new DataOutputStream(con.getOutputStream())) {
                wr.write(postParams.getBytes());
                wr.flush();
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 응답
                return readBody(con.getInputStream());
            } else {  // 에러 응답
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }

    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);

        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();

            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }

            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
    
    
//	
//  서귀포시 축제정보
	@RequestMapping(value = "/home/testCovid")
	public String publicCorona1List2(Model model) throws Exception {
		
		System.out.println("asdfasdfasdf");
		
		String apiUrl = "https://www.seogwipo.go.kr/festival/program/scheduledata.htm?act=index&format=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
        
        System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		List<HashMap<String, Object>> items = new ArrayList<HashMap<String, Object>>();
		items = (List<HashMap<String, Object>>) map.get("courses");
		
		System.out.println("items: " + items);
		System.out.println("items.size(): " + items.size());
		
		System.out.println(items.getClass());
		System.out.println(items.get(0).get("ctime"));
		
		model.addAttribute("items", items);
		
		return "infra/home/user/testCovid";
	}
	
//  선생님 예시
	@RequestMapping(value = "/home/testCovid2")
	public String publicCorona1List(Model model) throws Exception {
		
		System.out.println("asdfasdfasdf");
		
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=dNLcjyriV9IBD5djvIMsq16GYwW%2F8N%2FCtnCNvRj66yaLV9jXKhipDNCJFDcDzorgqnVsJsz5gmYoibNbAG0sdw%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
//		json object + array string -> java map
		
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
        
        System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		String aaa = (String) header.get("resultCode");
		
//		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");
		
		List<Home> items = new ArrayList<Home>();
		items = (List<Home>) body.get("items");
		
		
		System.out.println("items.size(): " + items.size());
		
//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
		return "infra/home/user/testCovid2";
	}
	
//	엑셀 다운로드
	@RequestMapping(value="/home/excelDownload")
    public void excelDownload(Home dto, HomeVo vo, HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest) throws Exception {
		
		setSearchAndPaging(vo, httpServletRequest);
		vo.setParamsPagingMypage(service.selectWordCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Home> list = service.myWordList(vo);
			List<Home> list1 = service.myWordContents(vo);
			
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
	        String[] tableHeader = {"단어", "뜻", "예시", "날짜"};

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
	        	if(list.get(i).getSdwWord() != null) cell.setCellValue(list.get(i).getSdwWord());
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	for(int j=0; j<list1.size(); j++) {
	        		if(list.get(i).getSdwWord()==list1.get(j).getSdwWord()) cell.setCellValue(list1.get(j).getSdwmPartOfSpeech());
//	        		if(list.get(i).getSdwWord()==list1.get(j).getSdwWord()) cell.setCellValue(list1.get(j).getSdwmContents());
	        	}
	        	
	        	
	        	cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	for(int j=0; j<list1.size(); j++) {
	        		if(list.get(i).getSdwWord()==list1.get(j).getSdwWord()) cell.setCellValue(list1.get(j).getSdweContents()+list1.get(j).getSdweTranslate());
	        	}
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getSddDateChoice() != null) cell.setCellValue(list.get(i).getSddDateChoice());
	        	
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
				
}
