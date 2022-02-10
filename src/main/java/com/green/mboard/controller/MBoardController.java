package com.green.mboard.controller;

import java.util.HashMap;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.mboard.service.MBoardService;
import com.green.mboard.vo.MboardVo;
import com.green.menu.service.MenuService;
import com.green.menu.vo.MenuVo;

@Controller
public class MBoardController {

	@Autowired
	private MenuService menuService;

	@Autowired
	private  MBoardService  mboardService;
	
	
	@RequestMapping("/")
	public  String  home() {
		return "home";
	}
	
	@RequestMapping("/project/List")
	public  ModelAndView  projectList(String menu_id) {

		HashMap<String, Object> map = new HashMap<String,Object>();
		
		map.put("menu_id",menu_id);

		List<MenuVo> menuList = menuService.getMenuList();
		
		
		List<MboardVo> mboardList = mboardService.getMbaordList(map);
		
		ModelAndView mv = new ModelAndView();
		
	
		
		mv.addObject("menu_id", menu_id);
		mv.addObject("menuList", menuList);
		mv.addObject("mboardList", mboardList);
		
		mv.setViewName("list");
		
		return mv;
	}
	
	@RequestMapping("/project/writeForm")
	public ModelAndView projectWriteForm(MboardVo vo) {

		ModelAndView mv = new ModelAndView();
		List<MenuVo> menuList = menuService.getMenuList();
		mv.addObject("menuList", menuList);
		mv.addObject("menu_id", vo.getMenu_id());
		mv.addObject("board", vo);
		mv.setViewName("write");
		
		return mv;
		
	}
	
	@RequestMapping("/project/write")
	public String projectWrite(MboardVo vo) {
		
		mboardService.insertBoard(vo);
		String menu_id = vo.getMenu_id();
		
		return "redirect:/project/List?menu_id=" + menu_id;
	}
	
	@RequestMapping("/project/view")
	public ModelAndView projectView(@RequestParam HashMap <String, Object> map) {
		
		
		String menu_id = (String) map.get("menu_id");
		
		List<MenuVo> menuList = menuService.getMenuList(map);
		MboardVo mboardVo = mboardService.getView(map);
		
		System.out.println("view: "+mboardVo);
		
		ModelAndView mv = new ModelAndView();
		
		
		mv.addObject("menu_id", menu_id);		
		mv.addObject("menuList", menuList );  
		mv.addObject("mboard",    mboardVo );      
		mv.setViewName("view"); 
		
		return mv;
		
	}
	
	  @RequestMapping("/project/delete") 
	  public ModelAndView projectDelete(
			  @RequestParam HashMap<String,Object> map) {
	  
		  String menu_id = (String) map.get("menu_id");
		 mboardService.delete(map);
		  
		  
		  ModelAndView mv = new ModelAndView();
		  mv.addObject("menu_id",menu_id);
		  mv.setViewName("redirect:/project/List?menu_id"+menu_id);
		  return mv;
	  }
	  
	  @RequestMapping("/project/UpdateForm") 
	  public ModelAndView  projectUpdateForm(
			  @RequestParam HashMap<String,Object> map) {
		  
		  String        menu_id  = (String) map.get("menu_id");  
		  List<MenuVo>  menuList = menuService.getMenuList( map );
			
			MboardVo       mboardVo  = mboardService.getView( map );
			
			ModelAndView  mv = new ModelAndView();
			mv.addObject("menu_id",  menu_id);
			mv.addObject("menuList", menuList);
			mv.addObject("mboard",    mboardVo);
			mv.setViewName("update");   
			return       mv;		
		
	  }
	  
	  @RequestMapping("/project/update") 
	  public ModelAndView  projectUpdate(
			  @RequestParam HashMap<String,Object> map) {
		  
			String menu_id = (String) map.get("menu_id");
			
			mboardService.update( map );
					
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/project/List?menu_id=" + menu_id);
			return       mv;
			}
	
	
	
}








