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
	public List<MboardVo> getMbaordList(HashMap<String, Object> map) {
		
		List<MboardVo> mboardList = mboardDao.getMboardList(map);
		
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





