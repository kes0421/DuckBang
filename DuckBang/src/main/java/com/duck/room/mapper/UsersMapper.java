package com.duck.room.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.duck.room.dto.Users;

public interface UsersMapper {
	
	public List<Users> getUser();
	public Integer checkUser(String u_id);
	public void newUser(@Param("u_id") String u_id, @Param("u_pass") String u_pass);
}
