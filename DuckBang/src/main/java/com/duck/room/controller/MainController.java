package com.duck.room.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.room.mapper.InfoMapper;
import com.duck.room.mapper.MainMapper;
import com.duck.room.mapper.OfferingMapper;

@Controller
public class MainController {
	
	@Autowired
	OfferingMapper om;
	
	@Autowired
	InfoMapper im;
	
	@Autowired 
	MainMapper mm;
	
	@RequestMapping("/main")
	public String main(Model model) { 
		model.addAttribute("explain_1", om.getRoomAvg("원룸", "월세"));
		model.addAttribute("explain_2", om.getRoomAvg("원룸", "전세")); 
		model.addAttribute("explain_3", om.getRoomAvg("투룸", "월세"));
		model.addAttribute("explain_4", om.getRoomAvg("투룸", "전세"));
		model.addAttribute("explain_5", om.getRoomAvg("오피스텔", "월세"));
		model.addAttribute("explain_6", om.getRoomAvg("오피스텔", "전세"));
		model.addAttribute("recommend", mm.getRecommendList());
		return "/main/index";
	}
	
}