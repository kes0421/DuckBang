package com.duck.room.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.duck.room.mapper.InfoMapper;
import com.duck.room.mapper.MapMapper;

@Controller
public class MapController {

	@Autowired
	MapMapper mapMapper;
	
	@Autowired 
	InfoMapper im;
	
	@GetMapping("/map")
	public String mapMarkers(Model model) {
		
		ArrayList<Integer> o_id = new ArrayList<>();
		ArrayList<String> xcordinate = new ArrayList<>();
		ArrayList<String> ycordinate = new ArrayList<>();
//		ArrayList<String> ok_code = new ArrayList<>();
//		ArrayList<Integer> ok_deposit = new ArrayList<>();
//		ArrayList<Integer> ok_maintenance_cost = new ArrayList<>();
//		ArrayList<Integer> ok_month_of_payment = new ArrayList<>();
//		ArrayList<String> od_short_lease = new ArrayList<>();
//		ArrayList<Date> od_occupy_date = new ArrayList<>();
		
		for(int i = 0; i < mapMapper.getList().size(); ++i) {
			o_id.add(mapMapper.getList().get(i).getO_id());
			xcordinate.add(mapMapper.getList().get(i).getL_xcordinate());
			ycordinate.add(mapMapper.getList().get(i).getL_ycordinate());
//			ok_code.add(mapMapper.getMapList().get(i).getOk_code());
//			ok_deposit.add(mapMapper.getMapList().get(i).getOk_deposit());
//			ok_maintenance_cost.add(mapMapper.getMapList().get(i).getOk_maintenance_cost());
//			ok_month_of_payment.add(mapMapper.getMapList().get(i).getOk_month_of_payment());
//			od_short_lease.add(mapMapper.getMapList().get(i).getOd_short_lease());
//			od_occupy_date.add(mapMapper.getMapList().get(i).getOd_occupy_date());
		}
		
		model.addAttribute("o_id", o_id);
		model.addAttribute("xcordinate", xcordinate);
		model.addAttribute("ycordinate", ycordinate);
//		model.addAttribute("ok_code", ok_code);
//		model.addAttribute("ok_deposit", ok_deposit);
//		model.addAttribute("ok_maintenance_cost", ok_maintenance_cost);
//		model.addAttribute("ok_month_of_payment", ok_month_of_payment);
//		model.addAttribute("od_short_lease", od_short_lease);
//		model.addAttribute("od_occupy_date", od_occupy_date);
		
		return "map/index";
	}
	
	@GetMapping("/info")
	public String o_id_info(Integer o_id, Model model) {
		if(o_id == null) {
			return "main/index";
		}
		model.addAttribute("price", im.getPrice(o_id));
		model.addAttribute("InfoTop1", im.getTop1(o_id));
		model.addAttribute("InfoTop2", im.getTop2(o_id));
		model.addAttribute("Info1", im.getInfo(o_id));
		model.addAttribute("InfoImg", im.getImg(o_id));
		model.addAttribute("InfoOption", im.getOption(o_id));
		model.addAttribute("InfoSecurity", im.getSecurity(o_id));
		model.addAttribute("InfoOther", im.getOther(im.getTop2(o_id).getR_id()));
		return "info/index";
	}
}
