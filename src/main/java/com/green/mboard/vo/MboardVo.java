package com.green.mboard.vo;

public class MboardVo {
	// Fields
	private  int     idx;
	private  String  menu_id;
	private  String  title;
	private  String  cont;
	private  String  writer;
	private  String  regdate;
	private  int     readcount;
	
	private  int     bnum;
	private  int     lvl;
	private  int     step;
	private  int     nref;
	
	private  int     delnum;
	
	
	// Paging
	
	private int nowpage; // 현재페이지
	private int prevnowpage; // 현재 페이지의 이전버튼
	private int nextnowpage; // 현제 페이지의 다음버튼
	
	private int totalcount; // 게시글 총 갯수
	private int totalpagecount; // 화면에 보여줄 페이지 수
	
	private int pagestartnum; // 페이지 시작 번호
	private int pageendnum; // 페이지 끝 번호 
	private int pagegrpnum; // 페이지 그룹 번호
	
	private int pagecount; // 한 페이지 보여줄 게시글 개수

	private boolean ishowpageprev;
	private boolean ishowpagenext;
	

	// Constructor
	public MboardVo() {}

	public MboardVo(int idx, String menu_id, String title, String cont, String writer, String regdate, int readcount,
			int bnum, int lvl, int step, int nref, int delnum) {
		super();
		this.idx = idx;
		this.menu_id = menu_id;
		this.title = title;
		this.cont = cont;
		this.writer = writer;
		this.regdate = regdate;
		this.readcount = readcount;
		this.bnum = bnum;
		this.lvl = lvl;
		this.step = step;
		this.nref = nref;
		this.delnum = delnum;
	}
	

	
	// Getter / Setter
	
	public int getNowpage() {
		return nowpage;
	}

	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}

	public int getPrevnowpage() {
		return prevnowpage;
	}

	public void setPrevnowpage(int prevnowpage) {
		this.prevnowpage = prevnowpage;
	}

	public int getNextnowpage() {
		return nextnowpage;
	}

	public void setNextnowpage(int nextnowpage) {
		this.nextnowpage = nextnowpage;
	}

	public int getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}

	public int getTotalpagecount() {
		return totalpagecount;
	}

	public void setTotalpagecount(int totalpagecount) {
		this.totalpagecount = totalpagecount;
	}

	public int getPagestartnum() {
		return pagestartnum;
	}

	public void setPagestartnum(int pagestartnum) {
		this.pagestartnum = pagestartnum;
	}

	public int getPageendnum() {
		return pageendnum;
	}

	public void setPageendnum(int pageendnum) {
		this.pageendnum = pageendnum;
	}

	public int getPagegrpnum() {
		return pagegrpnum;
	}

	public void setPagegrpnum(int pagegrpnum) {
		this.pagegrpnum = pagegrpnum;
	}

	public int getPagecount() {
		return pagecount;
	}

	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}

	public boolean isIshowpageprev() {
		return ishowpageprev;
	}

	public void setIshowpageprev(boolean ishowpageprev) {
		this.ishowpageprev = ishowpageprev;
	}

	public boolean isIshowpagenext() {
		return ishowpagenext;
	}

	public void setIshowpagenext(boolean ishowpagenext) {
		this.ishowpagenext = ishowpagenext;
	}

	
	
	public int getDelnum() {
		return delnum;
	}


	public void setDelnum(int delnum) {
		this.delnum = delnum;
	}

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public int getLvl() {
		return lvl;
	}
	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getNref() {
		return nref;
	}
	public void setNref(int nref) {
		this.nref = nref;
	}
	
	// toString
	@Override
	public String toString() {
		return "BoardVo [idx=" + idx + ", menu_id=" + menu_id + ", title=" + title + ", cont=" + cont + ", writer="
				+ writer + ", regdate=" + regdate + ", readcount=" + readcount + ", bnum=" + bnum + ", lvl=" + lvl
				+ ", step=" + step + ", nref=" + nref + "]";
	}
	
	
}
