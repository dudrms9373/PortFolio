package com.green.menu.service;

import java.util.HashMap;
import java.util.List;

import com.green.menu.vo.MenuVo;

public interface MenuService {

	List<MenuVo> getMenuList(HashMap<String, Object> map);
	List<MenuVo> getMenuList();

}
