package com.duck.room.mapper;

import java.util.List;

import com.duck.room.dto.map.Location;
import com.duck.room.dto.map.MarkerDetails;

public interface MapMapper {
	
	// location에서 x좌표, y좌표 다 가져오기
	public List<Location> getList();
	
	public List<MarkerDetails> getMapList();
}