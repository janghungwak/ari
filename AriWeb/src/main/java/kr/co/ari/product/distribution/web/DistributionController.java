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
	
	/**
	 * 제품소개-파이프 이동
	 * 
	 *  파이프에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/Distribution/selectPipeList.do") 
	public String selectPipeList() throws Exception {
		return "product/distribution/pipeList.tiles";
	}
	
	/**
	 * 제품소개-환봉 이동
	 * 
	 *  환봉에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/Distribution/selectRoundbarList.do") 
	public String selectRoundbarList() throws Exception {
		return "product/distribution/roundbarList.tiles";
	}
	
	/**
	 * 제품소개-앵글 이동
	 * 
	 *  앵글에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/Distribution/selectAngleList.do") 
	public String selectAngleList() throws Exception {
		return "product/distribution/angleList.tiles";
	}
	
	/**
	 * 제품소개-채널 이동
	 * 
	 *  채널에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/Distribution/selectChannelList.do") 
	public String selectChannelList() throws Exception {
		return "product/distribution/channelList.tiles";
	}
	
	/**
	 * 제품소개-평철 이동
	 * 
	 *  평철에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/Distribution/selectFlatbarList.do") 
	public String selectFlatbarList() throws Exception {
		return "product/distribution/flatbarList.tiles";
	}
}
