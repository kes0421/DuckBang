package com.duck.room.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.duck.room.mapper.MapMapper;

@Controller
public class MapController {

	@Autowired
	MapMapper mapMapper;
	
	@GetMapping("/map")
	public String mapMarkers(Model model) {
		
		ArrayList<Integer> o_id = new ArrayList<>();
		ArrayList<String> xcordinate = new ArrayList<>();
		ArrayList<String> ycordinate = new ArrayList<>();
		
		for(int i = 0; i < mapMapper.getList().size(); ++i) {
			o_id.add(mapMapper.getList().get(i).getO_id());
			xcordinate.add(mapMapper.getList().get(i).getL_xcordinate());
			ycordinate.add(mapMapper.getList().get(i).getL_ycordinate());
		}
		
		model.addAttribute("o_id", o_id);
		model.addAttribute("xcordinate", xcordinate);
		model.addAttribute("ycordinate", ycordinate);
		
		return "map/index";
	}
	
	@GetMapping("/info")
	public String o_id_info(Integer o_id, Model model) {
		System.out.println("매물번호 : " + o_id);
		model.addAttribute("o_id", o_id);
		return "info/index";
	}
}
