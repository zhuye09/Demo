package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.CustOrderModel;

public class CustOrderMapper implements IRowMapper<CustOrderModel>{

	@Override
	public CustOrderModel rowMapper(ResultSet rs) throws Exception {
		CustOrderModel custOrderModel=new CustOrderModel();
		custOrderModel.setCustomer_id(rs.getInt("customer_id"));
		custOrderModel.setOrderlist_id(rs.getInt("orderlist_id"));
		return custOrderModel;
	}

}
