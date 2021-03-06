package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.CustMapper;
import cn.sendto.hotel.mappers.RoleMapper;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.RoleModel;

public class RoleDao {
	private DBHelper helper=new DBHelper();
	public List<RoleModel> findAll() throws Exception {
		List<RoleModel> list=new ArrayList<RoleModel>();
		try{
		String sql="select * from role";
		list=helper.executeQuery(sql, new RoleMapper());
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return list;
	}
	/**
	 * 根据id查询
	 * */
	public List<RoleModel> findById(int id) throws Exception {
		List<RoleModel> list = null;
		try{
			String sql="select * from role where id=?";
			list=helper.executeQuery(sql, new RoleMapper(),id);
			return list;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return null;
	}

	public int add(RoleModel model) throws Exception {
		int i=0;
		String sql="insert into role(roleName,roleDesc,dropState,company)values(?,?,?,?)";
		Object[]values=new Object[]{model.getRoleName(),model.getRoleDesc(),model.getDropState(),model.getCompany()};
			i=helper.executeUpdate(sql, values);
			helper.close();
		return i;
	}
	/**
	 * 修改
	 * @throws Exception 
	 * */
	public int update(RoleModel model) throws Exception {
		int i=0;
		try {
		String sql="update role set roleName=?,roleDesc=?,dropState=?,company=? where id=?";
		Object[]values=new Object[]{model.getRoleName(),model.getRoleDesc(),model.getDropState(),model.getCompany(),model.getId()};
			i = helper.executeUpdate(sql, values);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	/**
	 * 删除
	 * @throws Exception 
	 * */
	public int delete(int id) throws Exception {
		int i=0;
		try{
			String sql="delete from role where id=?";
			i=helper.executeUpdate(sql, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	public List<RoleModel> findByRoleName(String roleName)throws Exception {
		 List<RoleModel> list=new ArrayList<RoleModel>();
		 String sql="select * from role where roleName=?";
		 try{
		 list=helper.executeQuery(sql, new RoleMapper(), roleName);
		 }catch(Exception e){
			 e.printStackTrace();
		 }finally{
			 helper.close();
		 }
		return list;
	}

}
