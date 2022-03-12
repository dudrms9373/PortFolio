package com.green.mboard.service;

import java.util.HashMap;
import java.util.List;

import com.green.mboard.vo.MboardVo;

public interface MBoardService {

	List<MboardVo> getMboardList(HashMap<String, Object> map);

	void insertBoard(MboardVo vo);

	MboardVo getView(HashMap<String, Object> map);

	void delete(HashMap<String, Object> map);

	void update(HashMap<String, Object> map);




}
