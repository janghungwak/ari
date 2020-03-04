package kr.co.ari.borad.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.ari.borad.dao.BoardDAO;
import kr.co.ari.borad.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Resource(name="boardDAO")
	private BoardDAO boardDAO;
	
	
	@Override
	public List<?> selectBoardList(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardList(boardVO);
	}
	
	@Override
	public int selectBoardCount() {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardCount();
	}
	
	@Override
	public BoardVO selectBoardView(String bno) {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardView(bno);
	}
	
	@Override
	public int insertBoard(BoardVO boardVO) {
		return boardDAO.insertBoard(boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) {
		return boardDAO.updateBoard(boardVO);
	}

	@Override
	public int deleteBoard(BoardVO boardVO) {
		return boardDAO.deleteBoard(boardVO);
	}

}
