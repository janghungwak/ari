package kr.co.ari.borad.dao;


import java.util.List;

import kr.co.ari.borad.vo.BoardVO;

public interface BoardDAO {
	
	public abstract List<?> selectBoardList();
	
	public abstract int insertBoard(BoardVO boardVO);
	
	public abstract int updateBoard(BoardVO boardVO);
	
	public abstract int deleteBoard(BoardVO boardVO);
}
