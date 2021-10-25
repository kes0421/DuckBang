package com.duck.room.dto.map;

import java.util.Date;

import lombok.Data;

@Data
public class SummaryOffering {

	private Integer o_id;
	private String od_room_kind;
	private Float od_private_area;
	private Integer od_apply_floor;
	private Date od_occupy_date;
	private String ok_code;
	private Integer ok_deposit;
	private Integer ok_month_of_payment;
	private String od_short_lease;
	private String image_1;
	
}
