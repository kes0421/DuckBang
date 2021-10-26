package com.duck.room.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.duck.room.mapper.AboMapper;

@Controller
public class InfoController {
	
	@Autowired	
	AboMapper am;
	
	@GetMapping("/abo")
	public String abo(String r_id, Model model) {
		model.addAttribute("AboInfo", am.getInfo(r_id));
		model.addAttribute("AboRoom", am.getRoom(r_id));
		return "/abo/index";
	}
}
