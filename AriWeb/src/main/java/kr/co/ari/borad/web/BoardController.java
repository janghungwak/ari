package kr.co.ari.borad.web;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.co.ari.borad.service.BoardService;
import kr.co.ari.borad.vo.BoardVO;

@Controller
public class BoardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping("/ari/board.do")
	public String boardPage(@ModelAttribute BoardVO boardVO, Model model) throws Exception {
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
			
			//페이지 리스트에 게시되는 페이지 건수 5
			paginationInfo.setPageSize(boardVO.getPageSize());
			
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
	
	@RequestMapping("/ari/boardView.do")
	public String boardView(Model model, HttpServletRequest request) throws Exception {
		String bno = request.getParameter("bno");
		
		BoardVO boardVO = boardService.selectBoardView(bno);	
		
		List<?> fileList = boardService.selectFileList(boardVO.getBno());
		
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("fileList", fileList);
		return "cmmn/boardView.tiles";
	}
	
	@RequestMapping("/ari/insertBoardPage.do")
	public String insertBoardPage() throws Exception {
		System.out.println("게시판입력페이지");
		
		return "cmmn/boardInsertPage.tiles";
	}
	
	@RequestMapping("/ari/insertBoard.do")
	public String insertBoard(@ModelAttribute BoardVO boardVO, MultipartHttpServletRequest mrequest) throws Exception {
		System.out.println("게시판입력");
		try {

			boardService.insertBoard(boardVO, mrequest);	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/ari/board.do";
	}
	
	@RequestMapping("/ari/updateBoardPage.do")
	public String updateBoardPage(@ModelAttribute BoardVO boardVO, Model model) throws Exception {
		System.out.println("게시판수정페이지");
		
		BoardVO uboardVO = boardService.selectBoardView(boardVO.getBno());
		
		List<?> fileList = boardService.selectFileList(boardVO.getBno());
		
		model.addAttribute("boardVO", uboardVO);
		model.addAttribute("fileList", fileList);
		
		return "cmmn/boardUpdatePage.tiles";
	}
	
	@RequestMapping("/ari/updateBoard.do")
	public String updateBoard(@ModelAttribute BoardVO boardVO, MultipartHttpServletRequest mrequest) throws Exception {
		System.out.println("게시판수정");
		try {
			boardService.updateBoard(boardVO, mrequest);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:/ari/boardView.do?bno="+boardVO.getBno();
	}
	
	@RequestMapping("/ari/deleteBoard.do")
	public String deleteBoard(@ModelAttribute BoardVO boardVO) throws Exception {
		System.out.println("게시판삭제");
		try {
			boardService.deleteBoard(boardVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/ari/board.do";
	}
	
	@RequestMapping("/ari/downloadFile.do")
	public void downloadFile(@ModelAttribute BoardVO boardVO, HttpServletResponse response) throws Exception {
		try {
		BoardVO vo = boardService.selectFile(boardVO);
		String fname = vo.getFname();
		String rname = vo.getRname();
		
		byte[] fileByte = FileUtils.readFileToByteArray(new File(File.separator+"fileUpload"+File.separator+rname));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
        response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(fname,"UTF-8")+"\";");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.getOutputStream().write(fileByte);
          
        response.getOutputStream().flush();
        response.getOutputStream().close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
