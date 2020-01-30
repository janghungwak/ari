package kr.co.ari.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/")
	public String MainPage() {
		
		
		String test = "";
		
		
		test ="test";
		
		System.out.println("test");
		
		
		return "/cmmn/error";
	}
	
	@RequestMapping("/ari/main.do")
	public String MainPageTest() {
		
		
		String test = "";
		
		
		test ="test";
		
		System.out.println("test1");
		
		
		return "/cmmn/dataAccessFailure";
	}
}
