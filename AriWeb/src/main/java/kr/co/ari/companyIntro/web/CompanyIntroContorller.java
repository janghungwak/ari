package kr.co.ari.companyIntro.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author KIM
 * @since 2020.04.30
 * @version 1.0.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 */

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
