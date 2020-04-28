package kr.co.ari.product.materials.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MaterialsController {

	/**
	 * 제품소개-스텐레스 판 이동
	 * 
	 *  스텐레스 판에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectStanPanList.do") 
	public String selectStanPanList() throws Exception {
		return "product/materials/stanPanList.tiles";
	}
	
	/**
	 * 제품소개-스텐레스 파이프 > 구조용 파이프 이동
	 * 
	 *  스텐레스 파이프 > 구조용 파이프에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectStrPanList.do") 
	public String selectStrPanList() throws Exception {
		return "product/materials/strPipeList.tiles";
	}
	
	/**
	 * 제품소개-스텐레스 파이프 > 배관용파이프 이동
	 * 
	 *  스텐레스 파이프 > 배관용파이프에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectPipPipeList.do") 
	public String selectPipPipeList() throws Exception {
		return "product/materials/pipPipeList.tiles";
	}
	
	/**
	 * 제품소개-스텐레스 환봉/사각봉/육각봉 이동
	 * 
	 *  스텐레스 환봉/사각봉/육각봉에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectStanRoundbarList.do") 
	public String selectStanRoundbarList() throws Exception {
		return "product/materials/stanRoundbarList.tiles";
	}
	
	/**
	 * 제품소개-스텐레스 앵글 이동
	 * 
	 *  스텐레스 앵글에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectStanAngleList.do") 
	public String selectStanAngleList() throws Exception {
		return "product/materials/stanAngleList.tiles";
	}
	
	/**
	 * 제품소개-철판 이동
	 * 
	 *  철판에 대한 제품소개 페이지로 이동한다.
	 */
	@RequestMapping("/ari/product/materials/selectPanList.do") 
	public String selectPanList() throws Exception {
		return "product/materials/panList.tiles";
	}
}
