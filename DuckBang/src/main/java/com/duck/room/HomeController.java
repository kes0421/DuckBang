
package com.duck.room;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.room.mapper.InfoMapper;
import com.duck.room.mapper.OfferingMapper;
import com.duck.room.mapper.UsersMapper;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	
	@Autowired
	OfferingMapper om;
	
	@Autowired
	InfoMapper im;
	
	@Autowired
	UsersMapper um;
	
	@RequestMapping("/main")
	public String main(Model model) { 
		model.addAttribute("explain_1", om.getRoomAvg("원룸", "월세"));
		model.addAttribute("explain_2", om.getRoomAvg("원룸", "전세"));
		model.addAttribute("explain_3", om.getRoomAvg("투룸", "월세"));
		model.addAttribute("explain_4", om.getRoomAvg("투룸", "전세"));
		model.addAttribute("explain_5", om.getRoomAvg("오피스텔", "월세"));
		model.addAttribute("explain_6", om.getRoomAvg("오피스텔", "전세"));
		return "/main/index";
	}
	
	@RequestMapping("/map")
	public String map() {
		return "/map/index";
	}
	
	@RequestMapping("/info")
	public String info(Model model) {
		model.addAttribute("price", im.getPrice(1));
		System.out.println(im.getPrice(1));
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
	public String login(Model model) {
		model.addAttribute("user", um.getUser());
		
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

