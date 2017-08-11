package cn.sendto.hotel.services;

import java.util.List;

import cn.sendto.hotel.dao.RoleDao;
import cn.sendto.hotel.models.RoleModel;


/**
 * 角色相关的业务方法类
 * @author Administrator
 *
 */
public class RoleService {
	RoleDao dao=new RoleDao();
	public List<RoleModel> findAll()throws Exception{
		return dao.findAll();
	}
	public int add(RoleModel model)throws Exception{
		return dao.add(model);
	}
	public int update(RoleModel model)throws Exception{
		return dao.update(model);
	}
	public int delete(int id)throws Exception{
		return dao.delete(id);
	}
	public List<RoleModel> findByRoleName(String roleName)throws Exception {
		return dao.findByRoleName(roleName);
	}
	/**
	 * 根据id查询
	 * @throws Exception 
	 * */
	public List<RoleModel> findById(int id) throws Exception{
		return dao.findById(id);
	}
}
