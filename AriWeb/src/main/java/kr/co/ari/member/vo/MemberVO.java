package kr.co.ari.member.vo;

import java.io.Serializable;

/**
 * 
 * @author GWAK
 * @since 2020.04.30
 * @version 1.0.0
 * 
 * 수정이력 : 2020.04.30 최초 생성
 * 		   2020.11.07 KIM serialVersionUID 추가
 */

public class MemberVO implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	
	private String name;
	
	private String pass;
	
	private String addr;
	
	private String phone;
	
	private String email;
	
	public MemberVO() {}

	public MemberVO(String id, String name, String pass, String addr, String phone, String email) {
		super();
		this.id = id;
		this.name = name;
		this.pass = pass;
		this.addr = addr;
		this.phone = phone;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
