package kr.co.ari.borad.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.ari.borad.vo.BoardVO;

public interface BoardService {
	
	public abstract List<?> selectBoardList(BoardVO boardVO);
	
	public abstract int selectBoardCount(BoardVO boardVO);
	
	public abstract BoardVO selectBoardView(String bno);
	
	public abstract int insertBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest);
	
	public abstract int updateBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest);
	
	public abstract int deleteBoard(BoardVO boardVO);
	
	public abstract List<?> selectFileList(String bno);
	
	public abstract BoardVO selectFile(BoardVO boardVO);
	
	public abstract int insertReplyBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest);
}
