package kr.co.ari.auth.service;

import java.util.ArrayList;
import java.util.Collection;

import javax.annotation.Resource;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.co.ari.member.service.MemberService;
import kr.co.ari.member.vo.MemberVO;

public class AuthUserDetailsService implements UserDetailsService {

	@Resource(name="memberService")
	private MemberService memberService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		MemberVO memberVO = new MemberVO();
		
		memberVO.setId(username);
				
		MemberVO authVO = memberService.selectMember(memberVO);
		
		if(authVO == null) {
			throw new UsernameNotFoundException("해당 아이디정보를 찾을수 없습니다 : " +  username);
		}
		
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();

	    roles.add(new SimpleGrantedAuthority("ROLE_ADMIN"));	

	    UserDetails user = (UserDetails) new UserCustom(username, authVO.getPass(), roles, authVO);
		
		return user;
	}

}
