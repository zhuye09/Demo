package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.RoomTypeModel;

public class RoomTypeMapper implements IRowMapper<RoomTypeModel> {

	@Override
	public RoomTypeModel rowMapper(ResultSet rs) throws Exception {
		RoomTypeModel roomTypeModel=new RoomTypeModel();
		roomTypeModel.setId(rs.getInt("id"));
		roomTypeModel.setTypeName(rs.getString("typeName"));
		roomTypeModel.setAreas(rs.getFloat("areas"));
		roomTypeModel.setBeds(rs.getInt("beds"));
		roomTypeModel.setPrice(rs.getFloat("price"));
		return roomTypeModel;
	}

}
