package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.UserDeptModel;
import cn.sendto.hotel.models.UserRoleModel;

public class UserDeptMapper implements IRowMapper<UserDeptModel>{
	public UserDeptModel rowMapper(ResultSet rs) throws Exception {
		UserDeptModel model=new UserDeptModel();
		model.setDept_id(rs.getInt("dept_id"));
		model.setUser_id(rs.getString("user_id"));
		return model;
	}
}
