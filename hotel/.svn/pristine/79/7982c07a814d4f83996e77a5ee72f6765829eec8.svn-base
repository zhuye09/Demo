package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.CustMapper;
import cn.sendto.hotel.mappers.RoomTypeMapper;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.RoomTypeModel;

public class RoomTypeDao {
	private DBHelper helper=new DBHelper();
	/**
	 * 查询所有
	 * @throws Exception 
	 * */
	public List<RoomTypeModel> findAll() throws Exception {
		List<RoomTypeModel> list=new ArrayList<RoomTypeModel>();
		try{
		String sql="select * from roomType";
		list=helper.executeQuery(sql, new RoomTypeMapper());
		return list;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return null;
	}
	
	
	/**
	 * 查询所有
	 * @throws Exception 
	 * */
	public List<RoomTypeModel> findByTypeName(String  typeName) throws Exception {
		List<RoomTypeModel> list=new ArrayList<RoomTypeModel>();
		try{
		String sql="select * from roomType where typeName=?";
		list=helper.executeQuery(sql, new RoomTypeMapper(), typeName);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return list;
	}
	
	/**
	 * 查询所有
	 * @throws Exception 
	 * */
	public List<RoomTypeModel> findById(int id) throws Exception {
		List<RoomTypeModel> list=new ArrayList<RoomTypeModel>();
		try{
		String sql="select * from roomType where id=?";
		list=helper.executeQuery(sql, new RoomTypeMapper(), id);
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
	public int add(RoomTypeModel model) throws Exception {
		int i=0;
		try {
		String sql="insert into roomType(id,typeName,areas,beds,price)values(?,?,?,?,?)";
		Object[]values=new Object[]{model.getId(),model.getTypeName(),model.getAreas(),model.getBeds(),model.getPrice()};
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
	public int update(RoomTypeModel model) throws Exception {
		String sql="update roomType set typeName=?,areas=?,beds=?,price=? where id=?";
		Object[]values=new Object[]{model.getTypeName(),model.getAreas(),model.getBeds(),model.getPrice(),model.getId()};
			return helper.executeUpdate(sql, values);
	}
	/**
	 * 删除
	 * @throws Exception 
	 * */
	public int delete(int id) throws Exception {
		int i=0;
		try{
			String sql="delete from roomType where id=?";
			i=helper.executeUpdate(sql, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
}
