package com.decemelev.infra.modules.home;


import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decemelev.infra.common.util.UtilSecurity;


@Controller
/* @RequestMapping(value="/home/") */
public class HomeController {
	
	@Autowired
	HomeServiceImpl service;
	
	@RequestMapping(value = "/home/home")
	public String home(Model model) throws Exception {
		return "infra/home/user/home";
	}
	
	@RequestMapping(value = "/word/wordList")
	public String wordList(Model model) throws Exception {
		
		List<Home> list = service.wordList();
		model.addAttribute("list", list);
		
		List<Home> item = service.wordContents();
		model.addAttribute("item", item);
		
		return "infra/word/xdmin/wordList";
	}
	@RequestMapping(value = "/word/wordForm")
	public String wordForm(Model model) throws Exception {
		
		return "infra/word/xdmin/wordForm";
	}
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
	public Map<String, Object> wordDate(Home dto, @RequestParam("sddDateChoice") String sddDateChoice, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		dto.setSddDateChoice(sddDateChoice);
		System.out.println("처음: " + sddDateChoice);
		List<Home> list = service.selectList(dto);
		model.addAttribute("list", list);
		List<Home> result = service.selectContents(dto);
		if(result != null) {
			returnMap.put("rt", "success");
			returnMap.put("tt", result);
			returnMap.put("rr", list);
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
		
		List<Home> list1 = service.selectList(dto);
		model.addAttribute("list", list1);
		
		List<Home> item = service.selectContents(dto);
		model.addAttribute("item", item);
		
		HttpSession httpSession =  httpServletRequest.getSession();
		sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setMainKey(sessSeq);
		
		Home list = service.memberList(vo);
		model.addAttribute("list", list);
		
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		
		return "infra/home/user/mypage";
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
		
		System.out.println("controller result: " + result);
		return "redirect:/home/test";
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
	
	
	
				
}
