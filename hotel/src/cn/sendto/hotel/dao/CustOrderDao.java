package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.CustOrderMapper;
import cn.sendto.hotel.models.CustOrderModel;

public class CustOrderDao {
	
	//定义日志对象
	
	private DBHelper helper=new DBHelper();
	
	/**
	 * 查询所有
	 * */
	public List<CustOrderModel> findAll() throws Exception {
		 List<CustOrderModel> list=new ArrayList<CustOrderModel>();
		 try{
			 String sql="select * from customer_orderlist";
			 list=helper.executeQuery(sql, new CustOrderMapper(), null);
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
	public int add(CustOrderModel model) throws Exception {
		int i=0;
		
		String sql="insert into customer_orderlist(customer_id,orderlist_id)values(?,?)";
		Object[]values=new Object[]{model.getCustomer_id(),model.getOrderlist_id()};
		i=helper.executeUpdate(sql, values);
		
		return i;
	}

	/**
	 * 更新
	 * */
	public int update(CustOrderModel model) {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 删除
	 * */
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
