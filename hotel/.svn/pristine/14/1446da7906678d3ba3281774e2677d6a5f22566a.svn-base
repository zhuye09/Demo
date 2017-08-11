package cn.sendto.hotel.services;

import java.util.List;

import cn.sendto.hotel.dao.RoomTypeDao;
import cn.sendto.hotel.models.RoomTypeModel;

public class RoomTypeService {
	RoomTypeDao dao=new RoomTypeDao();
	public List<RoomTypeModel> findAll()throws Exception{
		return dao.findAll();
	}	
	public List<RoomTypeModel> findByTypeName(String typeName)throws Exception{
		return dao.findByTypeName(typeName);
	}
	public List<RoomTypeModel> findById(int id)throws Exception{
		return dao.findById(id);
	}
	public int add(RoomTypeModel model)throws Exception{
		return dao.add(model);
	}
	public int update(RoomTypeModel model)throws Exception{
		return dao.update(model);
	}
	public int delete(int id)throws Exception{
		return dao.delete(id);
	}
}
