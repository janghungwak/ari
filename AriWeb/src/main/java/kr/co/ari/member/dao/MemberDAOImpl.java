package kr.co.ari.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ari.member.vo.MemberVO;

/**
 * 
 * @author GWAK
 * @since 2020.04.30
 * @version 1.0.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 */

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public MemberVO selectMember(MemberVO memberVO) {
		return sqlSession.selectOne("kr.co.ari.member.dao.MemberDAO.selectMember", memberVO);
	}

}
