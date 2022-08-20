package kr.co.ari.member.dao;

import kr.co.ari.member.vo.MemberVO;

/**
 * 
 * @author GWAK
 * @since 2020.04.30
 * @version 1.0.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 */

public interface MemberDAO {
	public abstract MemberVO selectMember(MemberVO memberVO);
}
