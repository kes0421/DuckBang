package com.duck.room;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.room.mapper.InfoMapper;
import com.duck.room.mapper.OfferingMapper;

@Controller
public class HomeController { 
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	
	@Autowired
	OfferingMapper om;
	
	@Autowired	
	InfoMapper im;
	
	@RequestMapping("/abo")
	public String abo() {
		return "/abo/index";
	}
	
	@RequestMapping("/main/tou")
	public String tou() {
		return "/details/tou";
	}
	
	@RequestMapping("/agree/1")
	public String agree1() {
		return "/agree/1";
	}
	
	@RequestMapping("/agree/2")
	public String agree2() {
		return "/agree/2";
	}
	
	@RequestMapping("/agree/3")
	public String agree3() {
		return "/agree/3";
	}

	
	@RequestMapping("/membership")
	public String membership() {
		return "/login/membership/join";
	}
	
	@RequestMapping("/memberInfo")
	public String memberInfo() {
		return "/login/membership/info";
	}
}