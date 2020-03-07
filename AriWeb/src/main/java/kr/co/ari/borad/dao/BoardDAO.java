package kr.co.ari.borad.dao;


import java.util.List;

import kr.co.ari.borad.vo.BoardVO;

public interface BoardDAO {
	
	public abstract List<?> selectBoardList(BoardVO boardVO);
	
	public abstract int selectBoardCount();
	
	public abstract BoardVO selectBoardView(String bno);
	
	public abstract int insertBoard(BoardVO boardVO);
	
	public abstract int updateBoard(BoardVO boardVO);
	
	public abstract int deleteBoard(BoardVO boardVO);

	public abstract int insertFile(BoardVO boardVO);
	
	public abstract List<?> selectFileList(String bno);
	
	public abstract BoardVO selectFile(BoardVO boardVO);
	
	public abstract int deleteFile(String bno);
	
	public abstract int updateFile(BoardVO boardVO);
}
