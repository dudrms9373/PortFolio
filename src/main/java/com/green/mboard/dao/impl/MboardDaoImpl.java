package com.green.mboard.dao.impl;

import java.util.HashMap;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.mboard.dao.MboardDao;
import com.green.mboard.vo.MboardVo;
import com.green.menu.vo.MenuVo;

@Repository("mboardDao")
public class MboardDaoImpl implements MboardDao {

	@Autowired
	private  SqlSession  sqlSession;

@Override
public List<MboardVo> getMboardList(HashMap<String, Object> map){
	
	
//	sqlSession.selectList("MBoards.MboardList", map);
	sqlSession.selectList("MBoards.PagingList", map);
	
	List<MboardVo> mboardList = (List<MboardVo>) map.get("result");
	
	
	return mboardList;
	
}

@Override
public void insertMboard(MboardVo vo) {
	
	sqlSession.insert("MBoards.MboardInsert", vo);
	
}

@Override
public MboardVo mboardView(HashMap<String, Object> map) {
	
	sqlSession.selectList("MBoards.MboardView", map);
	List<MboardVo>  mboardList = (List<MboardVo>) map.get("result");
	MboardVo        mboardVo   = mboardList.get(0); 
	
	return     mboardVo;
}

@Override
public void deleteMbaord(HashMap<String, Object> map) {
	
	sqlSession.delete("MBoards.MboardDelete",map);
	
	
}

@Override
public void updateMbaord(HashMap<String, Object> map) {
	
	
	sqlSession.update("MBoards.MboardUpdate",map);
	
}
	
}






