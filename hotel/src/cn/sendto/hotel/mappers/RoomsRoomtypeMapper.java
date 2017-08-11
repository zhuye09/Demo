package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.view.RoomsRoomtype;

public class RoomsRoomtypeMapper implements IRowMapper<RoomsRoomtype>{

	@Override
	public RoomsRoomtype rowMapper(ResultSet rs) throws Exception {
		RoomsRoomtype rr = new RoomsRoomtype();
		rr.setId(rs.getString("id"));
		rr.setAreas(rs.getFloat("areas"));
		rr.setBeds(rs.getInt("beds"));
		rr.setPositions(rs.getString("positions"));
		rr.setPrice(rs.getFloat("price"));
		rr.setState(rs.getInt("state"));
		rr.setTypeId(rs.getInt("typeId"));
		rr.setTypeName(rs.getString("typeName"));
		return rr;
	}

}
