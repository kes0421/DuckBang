package com.duck.room.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.room.mapper.UsersMapper;

@Controller
public class LoginController {
	@Autowired
	UsersMapper um;
	
	@RequestMapping("/login")
	public String userLogin(Model model) {
		model.addAttribute("user", um.getUser());
		
		return "/login/login";
	}
}
