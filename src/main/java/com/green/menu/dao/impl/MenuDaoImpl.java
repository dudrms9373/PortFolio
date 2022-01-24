package com.green.menu.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.menu.dao.MenuDao;
import com.green.menu.vo.MenuVo;

@Repository("menuDao")
public class MenuDaoImpl implements MenuDao{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MenuVo> getMenuList(HashMap<String, Object> map){
		
		System.out.println("menuList: " +map);
		
		sqlSession.selectList("Menus.MenuList", map);
		
		List<MenuVo> menulist = (List<MenuVo>) map.get("result");
		System.out.println("menuList: " + menulist);
		
		return menulist;
	}

	@Override
	public List<MenuVo> getMenuList() {
		
		List<MenuVo> menulist = sqlSession.selectList("Menus.Menulist");
		
		return menulist;
	}
}
