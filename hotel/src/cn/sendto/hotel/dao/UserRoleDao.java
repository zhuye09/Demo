package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.RoleMapper;
import cn.sendto.hotel.mappers.UserDeptMapper;
import cn.sendto.hotel.mappers.UserRoleMapper;
import cn.sendto.hotel.models.DeptModel;
import cn.sendto.hotel.models.RoleModel;
import cn.sendto.hotel.models.UserDeptModel;
import cn.sendto.hotel.models.UserRoleModel;
public class UserRoleDao extends BaseDao{
private DBHelper helper = new DBHelper();

	/**
	 * dhx
	 * 查看
	 * */
	public List<UserRoleModel> findAll() throws SQLException {
		List<UserRoleModel> list = null;
		String sql = "select * from user_role";
		try {
			list = helper.executeQuery(sql, new UserRoleMapper());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			helper.close();
		}
		return list;
	}
	/**
	 * 根据id查询用户角色表
	 * @throws SQLException 
	 * */
	public UserRoleModel findById(int id) throws SQLException{
		List<UserRoleModel> list = null;
		String sql = "select * from user_role where role_id=?";
		try {
			list = helper.executeQuery(sql,new UserRoleMapper(),id);
			if(list != null && list.size() > 0){
				return list.get(0);
			}else{
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return null;
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
	public List<RoleModel>  findRoleById(int id) throws Exception {
		List<RoleModel> list = null;
		String sql = "SELECT r.* FROM user_role ur, role r WHERE ur.user_id =? AND r.id = ur.role_id";
		try {
			list = helper.executeQuery(sql,new RoleMapper(),id);
			if(list != null && list.size() > 0){
				return list;
			}else{
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return null;
	}
	
	
	
	/**
	 * 添加
	 * @throws Exception 
	 * */
	public int add(UserRoleModel model) throws Exception {
		int i=0;
		String sql="INSERT INTO user_role(role_id)VALUES(?)";
		Object[]values=new Object[]{model.getRole_id()};
		i=helper.executeUpdate(sql, values);
		return i;
	}
	/**
	 * 修改根据角色
	 * @throws Exception 
	 * */
	public List<UserRoleModel> updateByUser(UserRoleModel model) throws Exception {
		List<UserRoleModel> list=null;
		try {
		String sql="UPDATE user_role SET user_id=?, role_id=? WHERE user_id=?";
		Object[]values=new Object[]{model.getUser_id(),model.getRole_id(),model.getUser_id()};
			list=helper.executeQuery(sql,new UserRoleMapper(), values);
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
	public List<UserRoleModel> updateByRole(UserRoleModel model) throws Exception {
		List<UserRoleModel> list=null;
		try {
		String sql="UPDATE user_role SET user_id=?, role_id=? WHERE role_id=?";
		Object[]values=new Object[]{model.getUser_id(),model.getRole_id(),model.getRole_id()};
			list=helper.executeQuery(sql, new UserRoleMapper(), values);
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
			String sql="DELETE FROM user_role WHERE user_id=?";
			i=helper.executeUpdate(sql, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	public String findRoleNameById(int id) throws Exception {
		List<RoleModel> list = null;
		String sql = "SELECT roleName FROM user_role ur, role r WHERE ur.user_id =? AND r.id = ur.role_id";
		try {
			list = helper.executeQuery(sql,new RoleMapper(),id);
			if(list != null && list.size() > 0){
				return list.get(0).getRoleName();
			}else{
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return null;
	}
}
