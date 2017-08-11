package cn.sendto.hotel.services;

import java.util.List;

import cn.sendto.hotel.dao.DeptDao;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.DeptModel;

public class DeptService {
	DeptDao dao=new DeptDao();
	public List<DeptModel> findAll()throws Exception{
		return dao.findAll();
	}
	public int add(DeptModel model) throws Exception{
		 return dao.add(model);
	 }
	 public int update(DeptModel model) throws Exception{
		 return dao.update(model);
	 }
	 public int delete(int id) throws Exception{
		 return dao.delete(id);
	 }
}
