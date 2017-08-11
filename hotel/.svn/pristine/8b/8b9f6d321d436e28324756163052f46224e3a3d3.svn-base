package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.OrderListModel;

public class OrderListMapper3 implements IRowMapper<OrderListModel>{

	@Override
	public OrderListModel rowMapper(ResultSet rs) throws Exception {
		OrderListModel orderListModel=new OrderListModel();
		orderListModel.setId(rs.getInt("id"));
		orderListModel.setUserId(rs.getInt("userId"));
		orderListModel.setCusName(rs.getString("cusName"));
		orderListModel.setLiveDate(rs.getString("liveDate"));
		orderListModel.setReallyCheckoutDate(rs.getString("reallyCheckoutDate"));
		orderListModel.setExpectCheckoutDate(rs.getString("expectCheckoutDate"));
		orderListModel.setDiscount(rs.getFloat("discount"));
		orderListModel.setExpectCost(rs.getFloat("expectCost"));
		orderListModel.setReallyCost(rs.getFloat("reallyCost"));
		orderListModel.setStaste(rs.getInt("staste"));
		orderListModel.setDays(rs.getInt("days"));
		orderListModel.setRegDays(rs.getInt("regDays"));
		return orderListModel;
	}

}
