package com.green.mboard.dao;

import java.util.HashMap;
import java.util.List;
import com.green.mboard.vo.MboardVo;

public interface MboardDao {

	List<MboardVo> getMboardList(HashMap<String, Object> map);


	void insertMboard(MboardVo vo);


	MboardVo mboardView(HashMap<String, Object> map);


	void deleteMbaord(HashMap<String, Object> map);


	void updateMbaord(HashMap<String, Object> map);
	
}
