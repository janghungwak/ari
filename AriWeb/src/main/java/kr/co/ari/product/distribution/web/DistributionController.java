package kr.co.ari.product.distribution.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DistributionController {

	/**
	 * 제품소개-스텐일반커버
	 * 
	 *  스텐일반커버에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectStanGnrCoverList.do") 
	public String selectStanGnrCoverList() throws Exception {
		return "product/distribution/stanGnrCoverList.tiles";
	}
	
	/**
	 * 제품소개-스텐계량기커버 이동
	 * 
	 *  파이프에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectStanMeterCoverList.do") 
	public String selectStanMeterCoverList() throws Exception {
		return "product/distribution/stanMeterCoverList.tiles";
	}
	
	/**
	 * 제품소개-옥내분전함 이동
	 * 
	 *  옥내분전함에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectIndoorDistributionBoxList.do") 
	public String selectIndoorDistributionBoxList() throws Exception {
		return "product/distribution/indoorDistributionBoxList.tiles";
	}
	
	/**
	 * 제품소개-옥외분전함 이동
	 * 
	 *  옥외분전함에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectOutdoorDistributionBoxList.do") 
	public String selectOutdoorDistributionBoxList() throws Exception {
		return "product/distribution/outdoorDistributionBoxList.tiles";
	}
	
	/**
	 * 제품소개-옥외이중함 이동
	 * 
	 *  옥외이중함에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectOutdoorDualityList.do") 
	public String selectChannelList() throws Exception {
		return "product/distribution/outdoorDualityList.tiles";
	}
	
	/**
	 * 제품소개-집합계량기 이동
	 * 
	 *  집합계량기에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/distribution/selectCollectiveGutterList.do") 
	public String selectCollectiveGutterList() throws Exception {
		return "product/distribution/collectiveGutterList.tiles";
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
