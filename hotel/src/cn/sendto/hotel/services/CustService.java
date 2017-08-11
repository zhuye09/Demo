package cn.sendto.hotel.services;

import java.sql.SQLException;
import java.util.List;




import cn.sendto.hotel.dao.CustDao;
import cn.sendto.hotel.models.CustModel;

/**
 * 用户相关的业务方法类
 * @author Administrator
 *
 */
public class CustService {
	CustDao dao=new CustDao();
	public List<CustModel> findAll()throws Exception{
		 return dao.findAll();
	 }
	 public CustModel add(CustModel model) throws Exception{
		 return dao.add(model);
	 }
	 public int update(CustModel model) throws Exception{
		 return dao.update(model);
	 }
	 public int delete(int id) throws Exception{
		 return dao.delete(id);
	 }
}
