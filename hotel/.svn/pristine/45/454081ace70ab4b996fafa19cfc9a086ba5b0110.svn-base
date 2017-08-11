package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.view.OrderUserModel;

public class OrderUserMapper implements IRowMapper<OrderUserModel> {

	@Override
	public OrderUserModel rowMapper(ResultSet rs) throws Exception {
		OrderUserModel model = new OrderUserModel();
		model.setId(rs.getInt("id"));
		model.setUserId(rs.getInt("userId"));
		model.setIdcard(rs.getString("idCard"));
		model.setRoomId(rs.getString("roomId"));
		model.setCusName(rs.getString("cusName"));
		model.setLiveDate(rs.getString("liveDate"));
		model.setReallyCheckoutDate(rs.getString("reallyCheckoutDate"));
		model.setExpectCheckoutDate(rs.getString("expectCheckoutDate"));
		model.setDiscount(rs.getFloat("discount"));
		model.setExpectCost(rs.getFloat("expectCost"));
		model.setReallyCost(rs.getFloat("reallyCost"));
		model.setStaste(rs.getInt("staste"));
		model.setDays(rs.getInt("days"));
		model.setRegDays(rs.getInt("regDays"));
		model.setUserName(rs.getString("userName"));
		return model;
	}
	
}
