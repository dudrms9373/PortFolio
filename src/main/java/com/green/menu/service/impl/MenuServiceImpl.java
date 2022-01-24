package com.green.menu.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.green.menu.dao.MenuDao;
import com.green.menu.service.MenuService;
import com.green.menu.vo.MenuVo;

@Repository("menuService")
public class MenuServiceImpl implements MenuService{
	
	@Autowired
	MenuDao menuDao;
	
	
	@Override
	public List<MenuVo> getMenuList(HashMap<String, Object> map){
		
		List<MenuVo> menulist = menuDao.getMenuList(map);
		
		return menulist;
	}


	//ÀüÃ¼ menuList
	@Override
	public List<MenuVo> getMenuList() {
		
		List<MenuVo> menulist = menuDao.getMenuList();
		
		return menulist;
	}

}
