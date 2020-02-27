package kr.co.ari.main.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		System.out.println("메인화면");
		return "cmmn/main.tiles";
	}
	
	/**
	 *  로그인페이지 이동
	 * 
	 *  로그인페이지로 이동한다.
	 */
	@RequestMapping("/ari/login.do")
	public String loginPage(Model model, HttpServletRequest request) {
		String loginFail = request.getParameter("loginFail");
		model.addAttribute("loginFail", loginFail);
		return "cmmn/login.tiles";
	}
}
