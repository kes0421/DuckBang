package com.duck.room.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Offering {
	private Integer o_id;
	private String o_approval_state;
	private Date o_register_date;
	private String r_id;
	private String l_code;
}
