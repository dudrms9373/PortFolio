package com.green.mboard.service.impl;

import com.green.mboard.vo.MboardVo;

public class MboardPaging {
	
	
	// Fields
		// map 에 저장된 정보
		private  int    nowpage;         // 현재 페이지 정보
		private  int    pagecount;       // 한 페이지에 출력될 rows 수
		private  int    totalcount;      // 전체 Row 수 
		private  int    pagetotalcount;  // 한화면에 보열줄 페이지번호의 갯수  
		private  int    pagegrpnum;      // 페잊 그룹 번호
		
		// 추가요소 : paging.jsp 가 사용
		private  int    prevnowpage;     // 이전페이지번호
		private  int    nextnowpage;     // 다음페이지번호
		
		private  int    startpagenum;    // 페이지 시작번호
		private  int    endpagenum;      // 페이지 끝번호
		
		private  int    totalrecordpagecount;   // totalcount / pagecount
		
		private  boolean  ishowpageprev = true; 
		private  boolean  ishowpagenext = true; 
			
		//Constructor
		//  기본 생성자
		public MboardPaging() {		
		}
		
		public MboardPaging(int nowpage, int pagecount, int totalcount, int pagetotalcount, int pagegrpnum) {
			this.nowpage = nowpage;
			this.pagecount = pagecount;
			this.totalcount = totalcount;
			this.pagetotalcount = pagetotalcount;
			this.pagegrpnum = pagegrpnum;
		}

		//--------------------------------------
		// 메소드
		public MboardVo getMboardPagingInfo() {
			MboardVo   mboardVo = new MboardVo();
			
			// 총페이지수 27 = 263 / 10;
			this.totalrecordpagecount = 
				(int) Math.ceil( (double) totalcount / (double) pagecount );	
			

			this.startpagenum =
				(this.pagegrpnum-1) * this.pagetotalcount + 1;
			
			// 	페이지끝번호
			this.endpagenum  =  
				( totalrecordpagecount < (pagecount * pagetotalcount) ) ?
				    totalrecordpagecount  : pagegrpnum * pagetotalcount;
			
			// [처음] [이전] 출력여부
			if ( startpagenum == 1 )
				this.ishowpageprev = false;
			
			// [다음][마지막] 출력여부
			if ( endpagenum   == totalrecordpagecount )
				this.ishowpagenext = false;
					
			this.prevnowpage = this.startpagenum - 1;
			this.nextnowpage = this.endpagenum   + 1;
				
			//System.out.println("BoardPaging :pdsVo" + pdsVo);
			
			// 계산된 값을 vo 에 저장
			mboardVo.setNowpage(this.nowpage);
			mboardVo.setPrevnowpage(prevnowpage);
			mboardVo.setNextnowpage(nextnowpage);
			
			mboardVo.setTotalcount(totalcount);
			mboardVo.setTotalpagecount(pagetotalcount);
			
			mboardVo.setPagestartnum(this.startpagenum);
			mboardVo.setPageendnum(this.endpagenum);
			
			mboardVo.setPagecount(pagecount);
			mboardVo.setPagegrpnum(pagegrpnum);
			
			mboardVo.setIshowpagenext(ishowpagenext);
			mboardVo.setIshowpageprev(ishowpageprev);
					
			return  mboardVo;
		}


	// Getter / Setter

	public int getNowpage() {
		return nowpage;
	}

	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}

	public int getPagecount() {
		return pagecount;
	}

	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}

	public int getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}

	public int getPagetotalcount() {
		return pagetotalcount;
	}

	public void setPagetotalcount(int pagetotalcount) {
		this.pagetotalcount = pagetotalcount;
	}

	public int getPagegrpnum() {
		return pagegrpnum;
	}

	public void setPagegrpnum(int pagegrpnum) {
		this.pagegrpnum = pagegrpnum;
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

	public int getStartpagenum() {
		return startpagenum;
	}

	public void setStartpagenum(int startpagenum) {
		this.startpagenum = startpagenum;
	}

	public int getEndpagenum() {
		return endpagenum;
	}

	public void setEndpagenum(int endpagenum) {
		this.endpagenum = endpagenum;
	}

	public int getTotalrecordpagecount() {
		return totalrecordpagecount;
	}

	public void setTotalrecordpagecount(int totalrecordpagecount) {
		this.totalrecordpagecount = totalrecordpagecount;
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

	//toString
	@Override
	public String toString() {
		return "MboardPaging [nowpage=" + nowpage + ", pagecount=" + pagecount + ", totalcount=" + totalcount
				+ ", pagetotalcount=" + pagetotalcount + ", pagegrpnum=" + pagegrpnum + ", prevnowpage=" + prevnowpage
				+ ", nextnowpage=" + nextnowpage + ", startpagenum=" + startpagenum + ", endpagenum=" + endpagenum
				+ ", totalrecordpagecount=" + totalrecordpagecount + ", ishowpageprev=" + ishowpageprev
				+ ", ishowpagenext=" + ishowpagenext + "]";
	}
	
	


}
