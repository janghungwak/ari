package kr.co.ari.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	/**
	 * 메인홈페이지 이동
	 * 
	 *  메인 홈페이지로 이동한다.
	 */
	@RequestMapping("/ari/main.do")
	public String MainPage() {
		return "cmmn/main.tiles";
	}
	
	/**
	 *  로그인페이지 이동
	 * 
	 *  로그인페이지로 이동한다.
	 */
	@RequestMapping("/ari/login.do")
	public String loginPage() {
		return "cmmn/login.tiles";
	}
}
