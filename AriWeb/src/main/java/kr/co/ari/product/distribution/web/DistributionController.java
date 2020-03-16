package kr.co.ari.product.distribution.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DistributionController {

	/**
	 * 제품소개-판 이동
	 * 
	 *  판에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/Distribution/selectPanList.do") 
	public String selectPanList() throws Exception {
		return "product/distribution/panList.tiles";
	}
}
