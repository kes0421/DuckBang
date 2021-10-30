package com.duck.room.dto.realtor;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Offering {
	private Integer o_id;
	private String o_approval_state;
	private Date o_register_date;
	private String r_id;
	private Integer l_code;
}
