package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.UserModel;

public class UserMapper implements IRowMapper<UserModel> {
	@Override
	public UserModel rowMapper(ResultSet rs) throws Exception {
		UserModel user=new UserModel();
		
		user.setId(rs.getInt("id"));
		user.setUserName(rs.getString("userName"));
		user.setUserPass(rs.getString("userPass"));
		user.setTrueName(rs.getString("trueName"));
		user.setGender(rs.getString("gender"));
		user.setTel(rs.getString("tel"));
		user.setEnrollDate(rs.getDate("enrollDate"));
		user.setState(rs.getInt("state"));
		user.setHeaderimage(rs.getString("headerimage"));
		user.setDropState(rs.getInt("dropState"));
		user.setRole_id(rs.getInt("role_id"));
		if(rs.getString("roleName")==null ){
			user.setRoleName(null);
		}else{
			user.setRoleName(rs.getString("roleName"));;
		}
		return user;
	}
}
