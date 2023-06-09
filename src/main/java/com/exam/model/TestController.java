package com.exam.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	@RequestMapping("/")
	public @ResponseBody String root() throws Exception {
		return "Model And View";
	}
	
	@RequestMapping("/test1")
	public String test1(Model model) {
		
		// DB => SQL Mapper
		// 커스텀클래스
		
		model.addAttribute("name", "테스터");
		
		return "test1";
	}
	
	@RequestMapping("/mv")
	public ModelAndView test2() {
		ModelAndView mav = new ModelAndView();
		
		List<String> objList = new ArrayList<>();
		objList.add("데이터_01");
		objList.add("데이터_02");
		objList.add("데이터_03");
		
		int num = 3;
		
		mav.addObject("lists", objList);
		mav.addObject("numData", num);
		mav.addObject("ObjectTest", "점검용 텍스트");
		mav.addObject("name", "테스터2");
		mav.setViewName("subDir/sampleView");
		return mav;
	}

}
