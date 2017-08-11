package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.UserRoleModel;


public class UserRoleMapper implements IRowMapper<UserRoleModel> {
	public UserRoleModel rowMapper(ResultSet rs) throws Exception {
		UserRoleModel model = new UserRoleModel();
		model.setRole_id(rs.getInt("role_id"));
		model.setUser_id(rs.getInt("user_id"));
		
		return model;
	}
}
