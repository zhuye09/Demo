package cn.sendto.hotel.services;

import java.util.List;

import cn.sendto.hotel.dao.RoomsDao;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.view.RoomsRoomtype;

public class RoomsService {
	RoomsDao dao = new RoomsDao();

	public int add(RoomsModel model) throws Exception {
		return dao.add(model);
	}

	public int update(RoomsModel model) throws Exception {
		return dao.update(model);
	}

	public int delete(int id) throws Exception {
		return dao.delete(id);
	}
	
	/**
	 * 查询所有客房信息
	 * @return list
	 */
	public List<RoomsRoomtype> findAllRoomsInfo() throws Exception {
		return dao.findAllRoomsInfo();
	}
	
	public RoomsModel findByRoomsId(String roomId) throws Exception{
		return dao.findByRoomsId(roomId);
	}
	
	
}
