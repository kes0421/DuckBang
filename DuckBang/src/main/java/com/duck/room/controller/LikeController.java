package com.duck.room.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LikeController {
	
	@GetMapping("/like")
	public String likeList(@CookieValue(value = "user_id", defaultValue = "0") String user_id) {
		/*
		 	쿠키에서 받은 id로 DB 접속
		 */
		System.out.println(user_id);
		return "/like/index";
	}
}
