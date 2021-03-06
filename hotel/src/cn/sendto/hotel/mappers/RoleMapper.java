package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.RoleModel;

public class RoleMapper implements IRowMapper<RoleModel>{

	@Override
	public RoleModel rowMapper(ResultSet rs) throws Exception {
		RoleModel role=new RoleModel();
		role.setId(rs.getInt("id"));
		role.setRoleName(rs.getString("roleName"));
		role.setRoleDesc(rs.getString("roleDesc"));
		role.setDropState(rs.getInt("dropState"));
		role.setCompany(rs.getString("company"));
		
		return role;
	}

}
