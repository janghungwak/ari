package kr.co.ari.board.vo;

import java.io.Serializable;

public class BoardVO implements Serializable{

	private String bno;
	private String btitle;
	private String bpass;
	private String bwriter;
	private String bcontent;
	private String bregdate;
	private String bsec;
	
	//페이징처리 변수
	private int firstIndex=0;
	//한페이지당 게시되는 게시물 건 수
	private int recordCountPerPage=10;
	//현재페이지 번호
	private int currentPageNo;
	//보여지는 페이지 수
	private int pageSize=5;
	
	//첨부파일 
	private String fno;
	private String fname;
	private String rname;
	private long fsize;
	private String delyn;
	private String isnew;
	
	//파일존재여부
	private String fileExist;
	
	//검색
	private String searchtype;
	private String keyword;
	
	//게시판답글
	private String bnoreref;
	private String bnorelev;
	private String bnoreseq;	//
	
	public BoardVO() {}

	public BoardVO(String bno, String btitle, String bpass, String bwriter, String bcontent, String bregdate,
			String bsec, int firstIndex, int recordCountPerPage, int currentPageNo, int pageSize, String fno,
			String fname, String rname, long fsize, String delyn, String isnew, String fileExist, String searchtype,
			String keyword, String bnoreref, String bnorelev, String bnoreseq) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.bpass = bpass;
		this.bwriter = bwriter;
		this.bcontent = bcontent;
		this.bregdate = bregdate;
		this.bsec = bsec;
		this.firstIndex = firstIndex;
		this.recordCountPerPage = recordCountPerPage;
		this.currentPageNo = currentPageNo;
		this.pageSize = pageSize;
		this.fno = fno;
		this.fname = fname;
		this.rname = rname;
		this.fsize = fsize;
		this.delyn = delyn;
		this.isnew = isnew;
		this.fileExist = fileExist;
		this.searchtype = searchtype;
		this.keyword = keyword;
		this.bnoreref = bnoreref;
		this.bnorelev = bnorelev;
		this.bnoreseq = bnoreseq;
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

	public String getBsec() {
		return bsec;
	}

	public void setBsec(String bsec) {
		this.bsec = bsec;
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

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getFno() {
		return fno;
	}

	public void setFno(String fno) {
		this.fno = fno;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public long getFsize() {
		return fsize;
	}

	public void setFsize(long fsize) {
		this.fsize = fsize;
	}

	public String getDelyn() {
		return delyn;
	}

	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}

	public String getIsnew() {
		return isnew;
	}

	public void setIsnew(String isnew) {
		this.isnew = isnew;
	}

	public String getFileExist() {
		return fileExist;
	}

	public void setFileExist(String fileExist) {
		this.fileExist = fileExist;
	}

	public String getSearchtype() {
		return searchtype;
	}

	public void setSearchtype(String searchtype) {
		this.searchtype = searchtype;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getBnoreref() {
		return bnoreref;
	}

	public void setBnoreref(String bnoreref) {
		this.bnoreref = bnoreref;
	}

	public String getBnorelev() {
		return bnorelev;
	}

	public void setBnorelev(String bnorelev) {
		this.bnorelev = bnorelev;
	}

	public String getBnoreseq() {
		return bnoreseq;
	}

	public void setBnoreseq(String bnoreseq) {
		this.bnoreseq = bnoreseq;
	}
}
