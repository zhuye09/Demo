package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.view.OrderUserCountVO;

public class OrderUserCountMapper implements IRowMapper<OrderUserCountVO> {

	@Override
	public OrderUserCountVO rowMapper(ResultSet rs) throws Exception {
		OrderUserCountVO model = new OrderUserCountVO();
		model.setCnt(rs.getInt("cnt"));
		model.setLiveDate(rs.getString("liveDate"));
		model.setUserName(rs.getString("userName"));
		return model;
	}

}
