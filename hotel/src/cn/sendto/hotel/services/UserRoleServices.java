package cn.sendto.hotel.services;

import java.sql.SQLException;
import java.util.List;

import cn.sendto.hotel.dao.UserRoleDao;
import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.UserRoleModel;

public class UserRoleServices {
	private UserRoleDao dao=new UserRoleDao();
	/**
	 * dhx
	 * 查看
	 * */
	public List<UserRoleModel> findAll() throws SQLException {
		return dao.findAll();
	}
	/**
	 * 添加
	 * 
	 * */
	public int add(UserRoleModel model) throws Exception {
		return dao.add(model);
	}
	/**
	 * 更新
	 * 
	 * */
	public List<UserRoleModel>updateByUser(UserRoleModel model) throws Exception {
		return dao.updateByUser(model);
	}
	/**
	 * 更新
	 * */
	public List<UserRoleModel>updateByRole(UserRoleModel model) throws Exception {
		return dao.updateByRole(model);
	}
	
	/**
	 * 删除
	 * */
	public int delete(int id) throws Exception {
		return dao.delete(id);
	}
	/**
	 * 根据id查询角色信息
	 * @throws SQLException 
	 * */
	public UserRoleModel findById(int id) throws SQLException{
		return dao.findById(id);
	}
	
	/**
	 * 根据用户id查询用户角色
	 * 传参id，即要查找用户的id
	 * 条件一：关系表user_role表中的user_id = 方法中的参数（即传值）
	 * 条件二：关系表user_role表中的role_id = 角色表（role）中的id，即r.id = ur.role_id
	 * 
	 * @param id
	 * @return List<RoleModel> 
	 * @throws Exception
	 */
	public List<RoleModel>  findRoleById(int id) throws Exception{
		return dao.findRoleById(id);	
	}
	
}
