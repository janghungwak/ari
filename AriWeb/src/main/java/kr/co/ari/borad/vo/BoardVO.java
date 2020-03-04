package kr.co.ari.borad.vo;

import java.io.Serializable;

public class BoardVO implements Serializable{

	private String bno;
	private String btitle;
	private String bpass;
	private String bwriter;
	private String bcontent;
	private String bregdate;
	
	//페이징처리 변수
	private int firstIndex=0;
	//한페이지당 게시되는 게시물 건 수
	private int recordCountPerPage=10;
	//현재페이지 번호
	private int currentPageNo;
	
	public BoardVO() {}

	public BoardVO(String bno, String btitle, String bpass, String bwriter, String bcontent, String bregdate,
			int firstIndex, int recordCountPerPage, int currentPageNo) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.bpass = bpass;
		this.bwriter = bwriter;
		this.bcontent = bcontent;
		this.bregdate = bregdate;
		this.firstIndex = firstIndex;
		this.recordCountPerPage = recordCountPerPage;
		this.currentPageNo = currentPageNo;
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

	public int getFirstIndex() {
		return firstIndex;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}
	
	
	
}