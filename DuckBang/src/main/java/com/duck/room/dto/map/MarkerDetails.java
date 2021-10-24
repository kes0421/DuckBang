package com.duck.room.dto.map;

import java.util.Date;

import lombok.Data;

@Data
public class MarkerDetails {
	private Integer o_id;
	private Float l_xcordinate;
	private Float l_ycordinate;
	private String ok_code;
	private Integer ok_deposit;
	private Integer ok_maintenance_cost;
	private Integer ok_month_of_payment;
	private String od_short_lease;
	private Date od_occupy_date;
}
