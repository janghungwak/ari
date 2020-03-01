package kr.co.ari.borad.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ari.borad.service.BoardService;
import kr.co.ari.borad.vo.BoardVO;

@Controller
public class BoardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping("/ari/board.do")
	public String boardPage(Model model) throws Exception {
		System.out.println("게시판");
		try {
			List<?> boardList = boardService.selectBoardList();
			model.addAttribute("boardList", boardList);
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
