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
	public List<?> selectBoardList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("kr.co.ari.board.dao.BoardDAO.selectBoardList");
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

}
