package com.duck.room;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	
	@RequestMapping("/main")
	public String main() {
		return "/main/index";
	}
	
	@RequestMapping("/map")
	public String map() {
		return "/map/index";
	}
	
	@RequestMapping("/info")
	public String info() {
		return "/info/index";
	}
	
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
	@RequestMapping("/login")
	public String login() {
		return "/login/login";
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

