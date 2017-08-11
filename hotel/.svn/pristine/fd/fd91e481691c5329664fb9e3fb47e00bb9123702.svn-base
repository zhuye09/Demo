package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.CustMapper;
import cn.sendto.hotel.mappers.OrderListMapper;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.OrderListModel;

public class CustDao {
	private DBHelper helper=new DBHelper();
	
	/**
	 * 查询所有
	 * */
	public List<CustModel> findAll() throws Exception {
		List<CustModel> list=new ArrayList<CustModel>();
		try{
		String sql="select * from customer";
		list=helper.executeQuery(sql, new CustMapper(), null);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return list;
	}
	/**
	 * 添加
	 * */
	public CustModel add(CustModel model) throws Exception {
		int i=0;
		List<CustModel> list = null;
		
		String sql="insert into customer(idCard,userName,userPass,trueName,gender,tel,enrollDate,idType,state,headerimage,email,roomid)values(?,?,?,?,?,?,?,?,?,?,?,?)";
		String s1 = "select * from customer  where trueName='"+model.getTrueName()+"'";
		Object[]values=new Object[]{model.getIdCard(),model.getUserName(),model.getUserPass(),model.getTrueName(),model.getGender(),model.getTel(),
				model.getEnrollDate(),model.getIdType(),model.getState(),model.getHeaderimage(),model.getEmail(),model.getRoomid()};
		i=helper.executeUpdate(sql, values);
		if (i == 1) {
			list = helper.executeQuery(s1,new CustMapper() ,null);
		}
		return list.get(0);
		
	}

	/**
	 * 修改
	 * */
	public int update(CustModel model) throws Exception {
		int i=0;
		try {
		String sql="update customer set idCard=?,userName=?,userPass=?,trueName=?,gender=?,tel=?,enrollDate=?,idType=?,state=?,headerimage=?,email=? where id=?";
		Object[]values=new Object[]{model.getIdCard(),model.getUserName(),model.getUserPass(),model.getTrueName(),model.getGender(),model.getTel(),
				model.getEnrollDate(),model.getIdType(),model.getState(),model.getHeaderimage(),model.getEmail(),model.getId()};
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
	 * */
	public int delete(int id) throws Exception {
		int i=0;
		try{
			String sql="delete from customer where id=?";
			i=helper.executeUpdate(sql, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	public int findIdByCusName(String cusName) throws Exception {
		List<CustModel> i=null;
		int s =0;
		try{
			String sql = "select * from customer where trueName='"+cusName + "'";
			i=helper.executeQuery(sql,new CustMapper(), null);
			s = i.get(0).getId();
		}catch (Exception e) {
			e.printStackTrace();
			//throw new RuntimeException("用户的id查询异常");
		}finally {
			helper.close();
		}
		return s;
	} 

}
