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
	public String mainPage() throws Exception {
		return "cmmn/main.tiles";
	}
	
	/**
	 *  로그인페이지 이동
	 * 
	 *  로그인페이지로 이동한다.
	 */
	@RequestMapping("/ari/login.do")
	public String loginPage(Model model, HttpServletRequest request) throws Exception {
		//로그인 실패 메시지 처리
		String loginFail = request.getParameter("loginFail");
		//로그인 중복사용자가 있을시 메시지 처리
		String duplication = request.getParameter("duplication");
		
		model.addAttribute("loginFail", loginFail);
		model.addAttribute("duplication", duplication);
		return "cmmn/login.tiles";
	}
}
