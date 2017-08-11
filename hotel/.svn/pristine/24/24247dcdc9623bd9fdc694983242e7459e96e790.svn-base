package cn.sendto.hotel.services;

import java.util.List;

import cn.sendto.hotel.dao.CustOrderDao;
import cn.sendto.hotel.models.CustOrderModel;

public class CustOrderService {
	CustOrderDao dao=new CustOrderDao();
	public List<CustOrderModel> findAll() throws Exception{
		return dao.findAll();
	}
	public int add(CustOrderModel model)throws Exception{
		return dao.add(model);
	}
	public int update(CustOrderModel model)throws Exception{
		return dao.update(model);
	}
	public int delete(int id)throws Exception{
		return dao.delete(id);
	}
}
