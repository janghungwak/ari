package kr.co.ari.board.web;

import java.io.File;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.velocity.app.event.ReferenceInsertionEventHandler.referenceInsertExecutor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.co.ari.board.service.BoardService;
import kr.co.ari.board.vo.BoardVO;

@Controller
public class BoardController {
	
	private static final Logger logger = Logger.getLogger(BoardController.class);
	
	@Value("${file.filepath}")
	private String filepath;
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping("/ari/board/board.do")
	public String boardPage(@ModelAttribute BoardVO boardVO, Model model, HttpServletRequest request) throws Exception {
		logger.info("게시판");
		try {
			PaginationInfo paginationInfo = new PaginationInfo();
			
			if(request.getParameter("currentPageNo") != null) {
				boardVO.setCurrentPageNo(Integer.parseInt(request.getParameter("currentPageNo")));
			}
			
			//현재페이지 번호가 없으면 1
			if(boardVO.getCurrentPageNo() == 0 && request.getParameter("currentPageNo") == null) {
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
			
			int boardCount = boardService.selectBoardCount(boardVO);
			
			paginationInfo.setTotalRecordCount(boardCount);
			
			model.addAttribute("boardList", boardList);
			model.addAttribute("paginationInfo", paginationInfo);
			model.addAttribute("searchtype", boardVO.getSearchtype());
			model.addAttribute("keyword", boardVO.getKeyword());
			model.addAttribute("passMatch", request.getParameter("passMatch"));
			model.addAttribute("currentPageNo", boardVO.getCurrentPageNo());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
			
		return "board/board.tiles";
	}
	
	/**
	 * 견적문의 상세조회 이동
	 * 
	 * 견적문의 상세조회 화면으로 이동한다.
	 */
	@RequestMapping("/ari/board/boardView.do")
	public String boardView(Model model, HttpServletRequest request) throws Exception {
		String bno = request.getParameter("bno");
		String passMatch = request.getParameter("passMatch");
		
		BoardVO boardVO = boardService.selectBoardView(bno);	
		
		int boardReplyCnt = boardService.selectReplyBoardCnt(bno);
		
		List<?> fileList = boardService.selectFileList(boardVO.getBno());
		
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("fileList", fileList);
		model.addAttribute("passMatch", passMatch);
		model.addAttribute("boardReplyCnt", boardReplyCnt);
		
		return "board/boardView.tiles";
	}
	
	@RequestMapping("/ari/board/insertBoardPage.do")
	public String insertBoardPage() throws Exception {
		System.out.println("게시판입력페이지");
		
		return "board/boardInsertPage.tiles";
	}
	
	@RequestMapping("/ari/board/insertBoard.do")
	public String insertBoard(@ModelAttribute BoardVO boardVO, MultipartHttpServletRequest mrequest) throws Exception {
		System.out.println("게시판입력");
		try {
			boardService.insertBoard(boardVO, mrequest);	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/ari/board/board.do";
	}
	
	@RequestMapping("/ari/board/updateBoardPage.do")
	public String updateBoardPage(@ModelAttribute BoardVO boardVO, Model model) throws Exception {
		logger.info("게시판 수정페이지");
		
		BoardVO uboardVO = boardService.selectBoardView(boardVO.getBno());
		
		List<?> fileList = boardService.selectFileList(boardVO.getBno());
		
		model.addAttribute("boardVO", uboardVO);
		model.addAttribute("fileList", fileList);
		
		return "board/boardUpdatePage.tiles";
	}
	
	@RequestMapping("/ari/board/updateBoard.do")
	public String updateBoard(@ModelAttribute BoardVO boardVO, MultipartHttpServletRequest mrequest) throws Exception {
		logger.info("게시판 수정");
		try {
			boardService.updateBoard(boardVO, mrequest);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:/ari/board/boardView.do?bno="+boardVO.getBno();
	}
	
	@RequestMapping("/ari/board/deleteBoard.do")
	public String deleteBoard(@ModelAttribute BoardVO boardVO) throws Exception {
		logger.info("게시판 삭제");
		try {
			boardService.deleteBoard(boardVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/ari/board/board.do";
	}
	
	@RequestMapping("/ari/board/downloadFile.do")
	public void downloadFile(@ModelAttribute BoardVO boardVO, HttpServletResponse response) throws Exception {
		try {
		BoardVO vo = boardService.selectFile(boardVO);
		String fname = vo.getFname();
		String rname = vo.getRname();
		
		byte[] fileByte = FileUtils.readFileToByteArray(new File(File.separator+filepath+File.separator+rname));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
        response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(fname,"UTF-8")+"\";");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.getOutputStream().write(fileByte);
         

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
	        response.setContentType("text/html;charset=euc-kr");	 
	        
	        PrintWriter out = response.getWriter();
	        out.println("<script type='text/javascript'>");
	        out.println("alert('파일 오픈 중 오류가 발생하였습니다.');");
	        out.println("history.back(-1);");
	        out.println("</script>");
	        
	        out.flush();
	        out.close();
		}finally {
	        response.getOutputStream().flush();
	        response.getOutputStream().close();
		}
	}
	
	/**
	 * 답글 페이지 이동
	 * 
	 * 답글 등록페이지로 이동한다.
	 */
	@RequestMapping("/ari/board/boardReplyPage.do")
	public String BoardReplyPage(@ModelAttribute BoardVO boardVO, Model model) throws Exception {
		logger.info("게시판 답글 페이지이동");
		
		BoardVO reboardVO = boardService.selectBoardView(boardVO.getBno());
		
		model.addAttribute("boardVO", reboardVO);
		
		return "board/boardReplyPage.tiles";	
	}
	
	/**
	 * 답글 등록
	 * 
	 * 입력한 답글에 대한 정보를 등록 후 견적문의 목록화면으로 이동한다.
	 */
	@RequestMapping("/ari/board/insertReplyBoard.do")
	public String InsertReplyBoard(@ModelAttribute BoardVO boardVO, MultipartHttpServletRequest mrequest) throws Exception {
		logger.info("게시판 답글등록");
		try {
			int success = boardService.insertReplyBoard(boardVO, mrequest);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ari/board/board.do";
	}
	
	@RequestMapping("/ari/board/updateReplyBoardPage.do")
	public String updateReplyBoardPage(@ModelAttribute BoardVO boardVO, Model model) throws Exception {
		logger.info("게시판 답글 수정페이지");
		
		BoardVO uboardVO = boardService.selectBoardView(boardVO.getBno());
		
		List<?> fileList = boardService.selectFileList(boardVO.getBno());
		
		model.addAttribute("boardVO", uboardVO);
		model.addAttribute("fileList", fileList);
		
		return "board/boardReplyUpdatePage.tiles";
	}

	@RequestMapping("/ari/board/updateReplyBoard.do")
	public String updateReplyBoard(@ModelAttribute BoardVO boardVO, MultipartHttpServletRequest mrequest) throws Exception {
		logger.info("게시판 답글 수정");
		try {
			boardService.updateReplyBoard(boardVO, mrequest);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:/ari/board/boardView.do?bno="+boardVO.getBno();
	}
	
	@RequestMapping("/ari/board/boardPassChk.do")
	public String BoardPassChk(@ModelAttribute BoardVO boardVO,HttpServletRequest request) throws Exception {			
			String bno = request.getParameter("bno");
			String bpass = request.getParameter("bpass");
			String mod = request.getParameter("mod");
			String bnorelev = request.getParameter("bnorelev");
			
			System.out.println(mod);
			String currentPageNo = request.getParameter("currentPageNo");
			Map<String, Object> map = new LinkedHashMap<>();
			
			map.put("bno", bno);
			map.put("bpass", bpass);
		
			int boardPassChk = boardService.selectBoardPassChk(map);
			
			if("update".equals(mod)) { //상세조회에서 수정할때
				if(boardPassChk > 0) {//성공하면

					// mod가 수정할때 조회를 성공 후 원본글을 수정하는 경우에는 원본글 수정페이지로,
					// 답글을 수정하는 경우에는 답글 수정페이지로 이동한다.
					// bnorelev : 0 이면 원본글 그외는 순차적으로 답글 순서가 들어감.
					if("0".equals(bnorelev)){
						return "forward:/ari/board/updateBoardPage.do";
					}else {
						return "forward:/ari/board/updateReplyBoardPage.do";
					}
					
				}else {
					return "forward:/ari/board/boardView.do?bno="+bno+"&passMatch=false";
				}
			}else if("delete".equals(mod)) { //상세조회에서 삭제할떄
				if(boardPassChk > 0) {//성공하면
					return "forward:/ari/board/deleteBoard.do";
				}else {
					return "forward:/ari/board/boardView.do?bno="+bno+"&passMatch=false";
				}
			}else {	//게시판목록에서 접근할때		
				if(boardPassChk > 0) {//성공하면
					return "forward:/ari/board/boardView.do?bno="+bno+"&passMatch=true";
				}
			}
		return "redirect:/ari/board/board.do?passMatch=false&currentPageNo="+currentPageNo;
	}
}
