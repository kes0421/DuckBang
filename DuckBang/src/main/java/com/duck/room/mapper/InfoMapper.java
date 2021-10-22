package com.duck.room.mapper;

import org.apache.ibatis.annotations.Param;

import com.duck.room.dto.InfoPrice;

import lombok.Data;

public interface InfoMapper {
	public InfoPrice getPrice(@Param("o_id") Integer o_id);
}
