package kr.co.ari.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ari.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public MemberVO selectMember(MemberVO memberVO) {
		return sqlSession.selectOne("kr.co.ari.member.dao.MemberDAO.selectMember", memberVO);
	}

}
