package kr.co.ari.member.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.ari.member.dao.MemberDAO;
import kr.co.ari.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO selectMember() {
		// TODO Auto-generated method stub
		return memberDAO.selectMember();
	}

}
