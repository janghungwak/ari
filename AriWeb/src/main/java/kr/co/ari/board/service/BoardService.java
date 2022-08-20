package kr.co.ari.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.ari.board.vo.BoardVO;

/**
 * 
 * @author GWAK
 * @since 2020.04.30
 * @version 1.0.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 */

public interface BoardService {
	
	public abstract List<?> selectBoardList(BoardVO boardVO);
	
	public abstract int selectBoardCount(BoardVO boardVO);
	
	public abstract BoardVO selectBoardView(String bno);
	
	public abstract int selectReplyBoardCnt(String bnoreref);
	
	public abstract int insertBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest);
	
	public abstract int updateBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest);

	public abstract int updateReplyBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest);
	
	public abstract int deleteBoard(BoardVO boardVO);
	
	public abstract List<?> selectFileList(String bno);
	
	public abstract BoardVO selectFile(BoardVO boardVO);
	
	public abstract int insertReplyBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest);
	
	public abstract int selectBoardPassChk(Map<String, Object> map);
}
