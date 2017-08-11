package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.CustModel;

public class CustMapper implements IRowMapper<CustModel> {

	@Override
	public CustModel rowMapper(ResultSet rs) throws Exception {
		CustModel cust=new CustModel();
		cust.setId(rs.getInt("id"));
		cust.setIdCard(rs.getString("idCard"));
		cust.setUserName(rs.getString("userName"));
		cust.setUserPass(rs.getString("userPass"));
		cust.setTrueName(rs.getString("trueName"));
		cust.setGender(rs.getString("gender"));
		cust.setTel(rs.getString("tel"));
		cust.setEnrollDate(rs.getDate("enrollDate"));
		cust.setIdType(rs.getString("idType"));
		cust.setState(rs.getInt("state"));
		cust.setHeaderimage(rs.getString("headerimage"));
		cust.setEmail(rs.getString("email"));
		cust.setRoomid(rs.getString("roomid"));
		return cust;
	}

}
