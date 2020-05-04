package kr.co.ari.board.dao;


import java.util.List;
import java.util.Map;

import kr.co.ari.board.vo.BoardVO;

public interface BoardDAO {
	
	public abstract List<?> selectBoardList(BoardVO boardVO);
	
	public abstract int selectBoardCount(BoardVO boardVO);
	
	public abstract BoardVO selectBoardView(String bno);
	
	public abstract int selectReplyBoardCnt(String bnoreref);
	
	public abstract int insertBoard(BoardVO boardVO);
	
	public abstract int updateBoard(BoardVO boardVO);

	public abstract int deleteBoard(BoardVO boardVO);

	public abstract int insertFile(BoardVO boardVO);
	
	public abstract List<?> selectFileList(String bno);
	
	public abstract BoardVO selectFile(BoardVO boardVO);
	
	public abstract int deleteFile(String bno);
	
	public abstract int updateFile(BoardVO boardVO);
	
	public abstract int updateFileExist(BoardVO boardVO);
	
	public abstract int updateBnoreseq(BoardVO boardVO);
	
	public abstract int insertReplyBoard(BoardVO boardVO);
	
	public abstract int selectBoardPassChk(Map<String, Object> map);
}
