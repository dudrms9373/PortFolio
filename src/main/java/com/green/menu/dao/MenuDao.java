package com.green.menu.dao;

import java.util.HashMap;
import java.util.List;

import com.green.menu.vo.MenuVo;

public interface MenuDao {

	List<MenuVo> getMenuList(HashMap<String, Object> map);

	List<MenuVo> getMenuList();

}
