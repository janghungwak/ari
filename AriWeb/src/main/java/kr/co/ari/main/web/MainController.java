package kr.co.ari.main.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ari.member.service.MemberService;
import kr.co.ari.member.vo.MemberVO;

@Controller
public class MainController {
	
	@Resource(name="memberService")
	private MemberService memberService;
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
	public String loginPage(Model model) {
		MemberVO vo = memberService.selectMember();
		System.out.println(vo.getId());
		model.addAttribute("vo", vo);
		model.addAttribute("test", "로그인페이지");
		return "cmmn/login.tiles";
	}
}
