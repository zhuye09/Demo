package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.DeptModel;

public class DeptMapper implements IRowMapper<DeptModel> {

	@Override
	public DeptModel rowMapper(ResultSet rs) throws Exception {
		DeptModel dept=new DeptModel();
		dept.setId(rs.getInt("id"));
		dept.setDeptname(rs.getString("deptname"));
		dept.setDeptdesc(rs.getString("deptdesc"));
		return dept;
	}

}
