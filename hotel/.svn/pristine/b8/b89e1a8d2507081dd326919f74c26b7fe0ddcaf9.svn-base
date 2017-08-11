package cn.sendto.hotel.services;

import java.sql.SQLException;
import java.util.List;

import cn.sendto.hotel.dao.UserDeptDao;
import cn.sendto.hotel.dao.UserRoleDao;
import cn.sendto.hotel.models.UserDeptModel;
import cn.sendto.hotel.models.UserRoleModel;

public class UserDeptServices {
	private UserDeptDao dao=new UserDeptDao();
	/**
	 *查看
	 * */
	public List<UserDeptModel> findAll() throws SQLException {
		return dao.findAll();
				
	}
	/**
	 * 添加
	 * */
	public int add(UserDeptModel model) throws Exception {
		return dao.add(model);
	}
	/**
	 * 修改根据用户id
	 * */
	public List<UserDeptModel> updateByUser(UserDeptModel model) throws Exception {
		return dao.updateByRole(model);
	}
	/**
	 * 修改根据角色id
	 * */
	public List<UserDeptModel> updateByRole(UserDeptModel model) throws Exception {
		return dao.updateByUser(model);
	}
	/**
	 * 删除
	 * */
	public int delete(int id) throws Exception {
		return dao.delete(id);
	}
}
