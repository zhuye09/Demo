package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.CustMapper;
import cn.sendto.hotel.mappers.DeptMapper;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.DeptModel;

public class DeptDao {
	//定义日志对象
	
	private DBHelper helper=new DBHelper();
	/**
	 * 查询所有
	 * @throws Exception 
	 * */
	public List<DeptModel> findAll() throws Exception {
		List<DeptModel> list=new ArrayList<DeptModel>();
		try{
		String sql="select * from dept";
		list=helper.executeQuery(sql, new DeptMapper(), null);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return list;
	}
	/**
	 * 添加
	 * @throws Exception 
	 * */
	public int add(DeptModel model) throws Exception {
		int i=0;
		try {
		String sql="insert into dept(id,deptname, deptdesc)values(?,?,?)";
		Object[]values=new Object[]{model.getId(),model.getDeptname(),model.getDeptdesc()};
			i=helper.executeUpdate(sql, values);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	/**
	 * 修改
	 * @throws Exception 
	 * */
	public int update(DeptModel model) throws Exception {
		int i=0;
		try {
		String sql="update dept set deptname=?, deptdesc=? where id=?";
		Object[]values=new Object[]{model.getDeptname(),model.getDeptdesc(),model.getId()};
			i=helper.executeUpdate(sql, values);
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
			String sql="delete from dept where id=?";
			i=helper.executeUpdate(sql, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}

}
