package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.UserDeptMapper;
import cn.sendto.hotel.mappers.UserRoleMapper;
import cn.sendto.hotel.models.UserDeptModel;
import cn.sendto.hotel.models.UserRoleModel;

public class UserDeptDao {
	private DBHelper helper=new DBHelper();
	/**
	 * 增加
	 * */
	public int add(UserDeptModel model) throws Exception {
		int i=0;
		try {
		String sql="INSERT INTO user_dept(user_id,dept_id)VALUES(?,?)";
		Object[]values=new Object[]{model.getUser_id(),model.getDept_id()};
			i=helper.executeUpdate(sql, values);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	
	/**
	 * 修改根据角色
	 * @throws Exception 
	 * */
	public List<UserDeptModel> updateByUser(UserDeptModel model) throws Exception {
	     List<UserDeptModel> list=null;
		try {
		String sql="UPDATE user_dept SET user_id=?, dept_id=? WHERE user_id=?";
		Object[]values=new Object[]{model.getUser_id(),model.getDept_id(),model.getUser_id()};
			list=helper.executeQuery(sql, new UserDeptMapper(), values);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return list;
	}
	
	/**
	 * 修改根据用户
	 * @throws Exception 
	 * */
	public List<UserDeptModel> updateByRole(UserDeptModel model) throws Exception {
		List<UserDeptModel> list=null;
		try {
		String sql="UPDATE user_dept SET user_id=?, dept_id=? WHERE dept_id=?";
		Object[]values=new Object[]{model.getUser_id(),model.getDept_id(),model.getDept_id()};
			list=helper.executeQuery(sql, new UserDeptMapper(), values);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return list;
	}
	/**
	 * 删除
	 * @throws Exception 
	 * */
	public int delete(int id) throws Exception {
		int i=0;
		try{
			String sql="DELETE FROM user_dept WHERE user_id=?";
			i=helper.executeUpdate(sql, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	/**
	 * 查看
	 * */
	public List<UserDeptModel> findAll() throws SQLException {
		List<UserDeptModel> list = null;
		String sql = "select * from user_dept";
		try {
			list = helper.executeQuery(sql, new UserDeptMapper(), null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			helper.close();
		}
		return list;
	}
	
}
