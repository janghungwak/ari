package kr.co.ari.auth.service;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import kr.co.ari.member.vo.MemberVO;

/**
 * 
 * @author GWAK
 * @since 2020.04.30
 * @version 1.0.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 *         2020.11.07 KIM serialVersionUID 추가
 * 
 */

public class UserCustom extends User {
	
	private static final long serialVersionUID = 1L;
	
	private MemberVO memberVO;
	
	
	
	public UserCustom(String username, String password, Collection<? extends GrantedAuthority> authorities, MemberVO memberVO) {
		super(username, password, authorities);
		this.memberVO = memberVO;
	}



	public UserCustom(String username, String password, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities, MemberVO memberVO) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.memberVO = memberVO;
	}



	public MemberVO getMemberVO() {
		return memberVO;
	}



	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
}
