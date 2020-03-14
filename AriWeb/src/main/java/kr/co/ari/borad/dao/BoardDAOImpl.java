package kr.co.ari.borad.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ari.borad.vo.BoardVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	@Override
	public List<?> selectBoardList(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("kr.co.ari.board.dao.BoardDAO.selectBoardList", boardVO);
	}
	
	@Override
	public int selectBoardCount(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kr.co.ari.board.dao.BoardDAO.selectBoardCount", boardVO);
	}
	
	@Override
	public BoardVO selectBoardView(String bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kr.co.ari.board.dao.BoardDAO.selectBoardView", bno);
	}
	
	@Override
	public int insertBoard(BoardVO boardVO) {
		return sqlSession.insert("kr.co.ari.board.dao.BoardDAO.insertBoard", boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) {
		return sqlSession.update("kr.co.ari.board.dao.BoardDAO.updateBoard", boardVO);
	}

	@Override
	public int deleteBoard(BoardVO boardVO) {
		return sqlSession.delete("kr.co.ari.board.dao.BoardDAO.deleteBoard", boardVO);
	}

	@Override
	public int insertFile(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert("kr.co.ari.board.dao.BoardDAO.insertFile", boardVO);
	}

	@Override
	public List<?> selectFileList(String bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("kr.co.ari.board.dao.BoardDAO.selectFileList", bno);
	}

	@Override
	public BoardVO selectFile(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kr.co.ari.board.dao.BoardDAO.selectFile", boardVO);
	}

	@Override
	public int deleteFile(String bno) {
		// TODO Auto-generated method stub
		return sqlSession.delete("kr.co.ari.board.dao.BoardDAO.deleteFile", bno);
	}

	@Override
	public int updateFile(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.update("kr.co.ari.board.dao.BoardDAO.updateFile", boardVO);
	}
	
	@Override
	public int updateFileExist(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.update("kr.co.ari.board.dao.BoardDAO.updateFileExist", boardVO);
		
	}

	@Override
	public int updateBnoreseq(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.update("kr.co.ari.board.dao.BoardDAO.updateBnoreseq", boardVO);
	}

	@Override
	public int insertReplyBoard(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert("kr.co.ari.board.dao.BoardDAO.insertReplyBoard", boardVO);
	}
	
}
