package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.OrderListModel;

public class OrderListMapper2 implements IRowMapper<OrderListModel>{

	@Override
	public OrderListModel rowMapper(ResultSet rs) throws Exception {
		OrderListModel orderListModel=new OrderListModel();
		orderListModel.setId(rs.getInt("id"));
		return orderListModel;
	}

}
