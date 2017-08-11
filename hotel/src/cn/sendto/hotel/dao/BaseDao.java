package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.sql.Savepoint;

import javax.naming.NamingException;

import cn.sendto.hotel.dao.DBHelper;

public class BaseDao {
	
	protected DBHelper dbHelper = new DBHelper();
	public Savepoint setSavepoint(String savePointName) throws SQLException{
		return dbHelper.setSavePoint(savePointName);
	}
	/**
	 * 开始事务
	 * */
	public void beginTrans() throws ClassNotFoundException, SQLException, NamingException{
		dbHelper.beginTrans();
	}
	/**
	 * 提交事务
	 * */
	public void commit() throws SQLException{
		dbHelper.commit();
	}
	/**
	 * 回滚事务
	 * */
	public void rollback() throws Exception{
		dbHelper.rollback();
	}
	/**
	 * 关闭事务
	 * */
	public void closeConnect() throws SQLException{
		dbHelper.close();
	}
}
