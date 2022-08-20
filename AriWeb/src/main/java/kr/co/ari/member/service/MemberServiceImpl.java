package kr.co.ari.member.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.ari.member.dao.MemberDAO;
import kr.co.ari.member.vo.MemberVO;

/**
 * 
 * @author GWAK
 * @since 2020.04.30
 * @version 1.0.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 */

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO selectMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		return memberDAO.selectMember(memberVO);
	}

}
