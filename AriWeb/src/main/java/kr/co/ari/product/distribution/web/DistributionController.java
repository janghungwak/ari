package kr.co.ari.product.distribution.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author KIM
 * @since 2020.04.30
 * @version 1.1.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 *         2020.11.07 고객 요청에 의한 스텐분전함 영역 메뉴 개편으로 인한 소스 수정
 */

@Controller
public class DistributionController {
	
	/**
	 * 제품소개-SUS COVER 이동
	 * 
	 *  SUS COVER에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectSusCoverList.do") 
	public String selectSusCoverList() throws Exception {
		return "product/distribution/susCoverList.tiles";
	}
	
	/**
	 * 제품소개-SUS 방수함 이동
	 * 
	 *  SUS 방수함에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectSusWaterProofBoxList.do") 
	public String selectSusWaterProofBoxList() throws Exception {
		return "product/distribution/susWaterProofBoxList.tiles";
	}
	
	/**
	 * 제품소개-SUS 옥외이중함 이동
	 * 
	 *  SUS 옥외이중함에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectSusOutdoorDualityBoxList.do") 
	public String selectSusOutdoorDualityBoxList() throws Exception {
		return "product/distribution/susOutdoorDualityBoxList.tiles";
	}
	
	/**
	 * 제품소개-SUS 계량기함 이동
	 * 
	 *  SUS 계량기함에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectSusOutdoorMeterBoxList.do") 
	public String selectSusOutdoorMeterBoxList() throws Exception {
		return "product/distribution/susOutdoorMeterBoxList.tiles";
	}
	
	/**
	 * 제품소개-SUS BASE 이동
	 * 
	 *  SUS BASE에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectSusBaseList.do") 
	public String selectSusBaseList() throws Exception {
		return "product/distribution/susBaseList.tiles";
	}
	
	/**
	 * 제품소개-SUS POST 이동
	 * 
	 *  SUS POST에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectSusPostList.do") 
	public String selectSusPostList() throws Exception {
		return "product/distribution/susPostList.tiles";
	}
	
	/**
	 * 제품소개-기타주문품 이동
	 * 
	 *  기타주문품에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectEtcOrderProductList.do") 
	public String selectEtcOrderProductList() throws Exception {
		return "product/distribution/etcOrderProductList.tiles";
	}
}
