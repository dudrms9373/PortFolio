package com.green.mboard.service.impl;

import java.util.HashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mboard.dao.MboardDao;
import com.green.mboard.service.MBoardService;
import com.green.mboard.vo.MboardVo;

@Service("boardService")
public class MBoardServiceImpl  implements MBoardService {

	@Autowired
	private  MboardDao  mboardDao;


@Override
	public List<MboardVo> getMboardList(HashMap<String, Object> map) {
		
		List<MboardVo> mboardList = mboardDao.getMboardList(map);
	
		// 페이징을 위한 내용 추가
		int pagetotalcount = 10;
		
		//한페이지에 보여줄 라인 수
		int pagecount = 
				Integer.parseInt(String.valueOf(map.get("pagecount")));
	
		// 현재페이지
		int nowpage =
				Integer.parseInt(String.valueOf(map.get("nowpage")));
		//pagegrpnum
		int pagegrpnum=
				Integer.parseInt(String.valueOf(map.get("pagegrpnum")));
		//전체자료수
		int totalcount =
				Integer.parseInt(String.valueOf(map.get("totalcount")));
		
		
		//paging.jsp에서 사용할 변수 값
		MboardPaging bp = new MboardPaging(nowpage, pagecount, 
				totalcount, pagetotalcount, pagegrpnum);
		
		MboardVo boardVo = bp.getMboardPagingInfo();
		
		boardVo.setMenu_id((String)map.get("menu_id"));
		map.put("pageVo", boardVo);
		
		return mboardList;
	}

	@Override
	public void insertBoard(MboardVo vo) {
		
		mboardDao.insertMboard(vo);
	
		
	}

	@Override
	public MboardVo getView(HashMap<String, Object> map) {
		
		MboardVo vo = mboardDao.mboardView(map);
		return vo;
	}

	@Override
	public void delete(HashMap<String, Object> map) {
		
		mboardDao.deleteMbaord(map);
		
	}

	@Override
	public void update(HashMap<String, Object> map) {
		mboardDao.updateMbaord(map);
		
	}
	

	
}





