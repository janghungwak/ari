package kr.co.ari.borad.vo;

import java.io.Serializable;

public class BoardVO implements Serializable{

	private String bno;
	private String btitle;
	private String bpass;
	private String bwriter;
	private String bcontent;
	private String bregdate;
	
	public BoardVO() {}

	public BoardVO(String bno, String btitle, String bpass, String bwriter, String bcontent, String bregdate) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.bpass = bpass;
		this.bwriter = bwriter;
		this.bcontent = bcontent;
		this.bregdate = bregdate;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBpass() {
		return bpass;
	}

	public void setBpass(String bpass) {
		this.bpass = bpass;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBregdate() {
		return bregdate;
	}

	public void setBregdate(String bregdate) {
		this.bregdate = bregdate;
	}

}
