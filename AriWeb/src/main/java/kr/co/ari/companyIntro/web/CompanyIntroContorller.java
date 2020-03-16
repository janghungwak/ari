package kr.co.ari.companyIntro.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyIntroContorller {

	/**
	 * 회사소개 페이지 이동
	 * 
	 *  회사소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/companyIntro/selectCompanyIntroList.do") 
	public String selectCompanyIntroList() throws Exception {
		return "companyIntro/companyIntroList.tiles";
	}
}
