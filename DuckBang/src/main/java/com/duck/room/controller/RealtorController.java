package com.duck.room.controller;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duck.room.dto.realtor.Image;
import com.duck.room.dto.realtor.Location;
import com.duck.room.dto.realtor.Offering;
import com.duck.room.dto.realtor.OfferingDetail;
import com.duck.room.dto.realtor.OfferingKind;
import com.duck.room.dto.realtor.OfferingOption;
import com.duck.room.dto.realtor.OfferingSecurity;
import com.duck.room.mapper.RealtorMapper;

@Controller
public class RealtorController {
	
	@Autowired 
	RealtorMapper rm;
	
	@RequestMapping("/regist")
	public String regist(HttpServletRequest request) throws UnsupportedEncodingException, NumberFormatException, ParseException {
		request.setCharacterEncoding("UTF-8");
		int parking_fee = 0;
		if(request.getParameter("ok_parking_fee").equals("")) {
			parking_fee = 0;
		}else {
			parking_fee = Integer.parseInt(request.getParameter("ok_parking_fee"));
		}
		
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		String od_short_lease = "불가능";
		
		if(request.getParameter("od_short_lease")==null) {
			od_short_lease = "불가능";
		}else if(request.getParameter("od_short_lease").equals("on")){
			od_short_lease = "가능";
		}

		
		System.out.println(rm.addLocation(new Location(81, request.getParameter("l_xcordinate"), request.getParameter("l_ycordinate"))));
		System.out.println(rm.addOffering(new Offering(81, "pass", new Date(), "5", 81)));
		System.out.println(rm.addKind(new OfferingKind(81, request.getParameter("ok_code"),
				Integer.parseInt(request.getParameter("ok_deposit")), 
				Integer.parseInt(request.getParameter("ok_maintenance_cost")), 
				Integer.parseInt(request.getParameter("ok_month_of_payment")), 
				parking_fee, 
				od_short_lease)));
		
		System.out.println(rm.addImage(new Image(
				81, 
				request.getParameter("image_1"),
				request.getParameter("image_2"),
				request.getParameter("image_3"),
				request.getParameter("image_4"),
				request.getParameter("image_5"))));
	
		System.out.println(rm.addDetail(new OfferingDetail(
				81, 
				request.getParameter("room_kind"), 
				Integer.parseInt(request.getParameter("od_whole_floor")),
				Integer.parseInt(request.getParameter("od_apply_floor")),
				Integer.parseInt(request.getParameter("od_private_area2")),
				Float.parseFloat(request.getParameter("od_private_area")),
				request.getParameter("od_supply_area"),
				Integer.parseInt(request.getParameter("od_room_count")),
				Integer.parseInt(request.getParameter("od_bathroom_count")),
				request.getParameter("od_heating_kind"),
				sd.parse((request.getParameter("od_occupy_date"))),
				request.getParameter("od_construction_use"),
				new Date(),
				"불가능" )));
		
		String[] optionChk = {"N","N","N","N","N","N","N","N","N","N","N","N","N"};
		for(String option : request.getParameterValues("option")) {
			optionChk[Integer.parseInt(option)] = "Y";
		}
		System.out.println(rm.addOption(new OfferingOption(
				81, 
				optionChk[0], 
				optionChk[1], 
				optionChk[2], 
				optionChk[3], 
				optionChk[4], 
				optionChk[5], 
				optionChk[6], 
				optionChk[7], 
				optionChk[8], 
				optionChk[9], 
				optionChk[10], 
				optionChk[11], 
				optionChk[12])));
		
		String[] securityChk = {"N","N","N","N","N"};
		for(String security : request.getParameterValues("security")) {
			securityChk[Integer.parseInt(security)] = "Y";
		}
		System.out.println(rm.addSecurity(new OfferingSecurity(
				81,
				securityChk[0], 
				securityChk[1], 
				securityChk[2], 
				securityChk[3], 
				securityChk[4])));
		
		return "/main/index";
	}
	
}
