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
}
