package com.duck.room.dto.main;

import java.util.Date;

import lombok.Data;

@Data
public class Recommend {
	private Integer o_id;
	private String image_1;
	private String od_room_kind;
	private String ok_code;
	private Integer ok_deposit;
	private Integer ok_month_of_payment;
	private Integer od_apply_floor;
	private Float od_private_area;
	private Integer ok_maintenance_cost;
	private Date od_occupy_date;
}