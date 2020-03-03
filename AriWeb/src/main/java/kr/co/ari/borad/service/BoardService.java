package kr.co.ari.borad.service;

import java.util.List;

import kr.co.ari.borad.vo.BoardVO;

public interface BoardService {
	
	public abstract List<?> selectBoardList(BoardVO boardVO);
	
	public abstract int selectBoardCount();
	
	public abstract int insertBoard(BoardVO boardVO);
	
	public abstract int updateBoard(BoardVO boardVO);
	
	public abstract int deleteBoard(BoardVO boardVO);
}
