package com.duck.room.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.duck.room.dto.Offering;
import com.duck.room.dto.RoomAvg;


public interface OfferingMapper {
	public List<Offering> getList();
	
	public RoomAvg getRoomAvg(@Param("od_room_kind") String od_room_kind, @Param("ok_code")String ok_code);
}
