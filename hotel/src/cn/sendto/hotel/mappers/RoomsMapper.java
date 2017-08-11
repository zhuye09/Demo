package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.RoomsModel;

public class RoomsMapper implements IRowMapper<RoomsModel>{

	@Override
	public RoomsModel rowMapper(ResultSet rs) throws Exception {
		RoomsModel roomsModel=new RoomsModel();
		roomsModel.setId(rs.getString("id"));
		roomsModel.setTypeId(rs.getInt("typeId"));
		roomsModel.setPositions(rs.getString("positions"));
		roomsModel.setState(rs.getInt("state"));
		roomsModel.setTypeName(rs.getString("typeName"));
		roomsModel.setPrice(rs.getFloat("price"));
		return roomsModel;
	}
	
}
