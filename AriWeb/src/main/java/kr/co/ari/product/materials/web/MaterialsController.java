package kr.co.ari.product.materials.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MaterialsController {

	/**
	 * 제품소개-판 이동
	 * 
	 *  판에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectPanList.do") 
	public String selectPanList() throws Exception {
		return "product/materials/panList.tiles";
	}
	
	/**
	 * 제품소개-파이프 이동
	 * 
	 *  파이프에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectPipeList.do") 
	public String selectPipeList() throws Exception {
		return "product/materials/pipeList.tiles";
	}
	
	/**
	 * 제품소개-환봉 이동
	 * 
	 *  환봉에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectRoundbarList.do") 
	public String selectRoundbarList() throws Exception {
		return "product/materials/roundbarList.tiles";
	}
	
	/**
	 * 제품소개-앵글 및 채널 이동
	 * 
	 *  앵글 및 채널에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectAngleAndChannelList.do") 
	public String selectAngleList() throws Exception {
		return "product/materials/angleAndChannelList.tiles";
	}
	
	/**
	 * 제품소개-평철 이동
	 * 
	 *  평철에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectFlatbarList.do") 
	public String selectFlatbarList() throws Exception {
		return "product/materials/flatbarList.tiles";
	}
}
