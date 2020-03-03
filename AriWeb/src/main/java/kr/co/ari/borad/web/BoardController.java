package kr.co.ari.borad.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.co.ari.borad.service.BoardService;
import kr.co.ari.borad.vo.BoardVO;

@Controller
public class BoardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping("/ari/board.do")
	public String boardPage(BoardVO boardVO, Model model) throws Exception {
		System.out.println("게시판");
		try {
			PaginationInfo paginationInfo = new PaginationInfo();
			
			//현재페이지 번호가 없으면 1
			if(boardVO.getCurrentPageNo() == 0) {
				paginationInfo.setCurrentPageNo(1);
			}else{//현재페이지 번호
				paginationInfo.setCurrentPageNo(boardVO.getCurrentPageNo());
			}
			
			//한 페이지당 게시되는 게시물 건수 10
			paginationInfo.setRecordCountPerPage(boardVO.getRecordCountPerPage());
			
			//페이지 리스트에 게시되는 페이지 건수 10
			paginationInfo.setPageSize(boardVO.getRecordCountPerPage());
			
			//(현재페이지번호 -1 * 한 페이지당 게시되는 게시물 건 수)
			int firstIndex = paginationInfo.getFirstRecordIndex();
			
			//(한 페이지당 게시되는 게시물 건 수)
			int recordCountPerPage = paginationInfo.getRecordCountPerPage();
			
			boardVO.setFirstIndex(firstIndex);
			boardVO.setRecordCountPerPage(recordCountPerPage);
			
			List<?> boardList = boardService.selectBoardList(boardVO);
			
			int boardCount = boardService.selectBoardCount();
			
			paginationInfo.setTotalRecordCount(boardCount);
			
			model.addAttribute("boardList", boardList);
			model.addAttribute("paginationInfo", paginationInfo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
			
		return "cmmn/board.tiles";
	}
	
	@RequestMapping("/ari/boardInsertPage.do")
	public String boardInsertPage() throws Exception {
		System.out.println("게시판입력페이지");
		return "cmmn/boardInsertPage.tiles";
	}
	
	@RequestMapping("/ari/boardInsert.do")
	public String boardInsert(@ModelAttribute BoardVO boardVO) throws Exception {
		System.out.println("게시판입력");
		boardService.insertBoard(boardVO);		
		return "redirect:/ari/board.do";
	}

}
