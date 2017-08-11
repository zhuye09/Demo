package cn.sendto.hotel.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;
import javax.swing.text.DefaultEditorKit.PasteAction;

import cn.sendto.hotel.mappers.IRowMapper;

public class DBHelper {
	private Connection connection = null;
	// PreparedStatement预编译sql语句，并存储在该对象中。
	private PreparedStatement pre = null;
	// 遍历查询结果的对象?
	// 处理mysql 的8小时问题autoReconnect=true
	private ResultSet rs = null;
	private String conn = "org.gjt.mm.mysql.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/hotel?autoReconnect=true";
	private static final String USER = "root";
	private static final String PASSWORD ="root";

	// static 保证了tl对象只有一个
	private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>();

	private void getConnection() throws ClassNotFoundException, SQLException,
			NamingException {
		// 链接对象不可用，则
		if (tl.get() == null || tl.get().isClosed() == true) {
			// 从连接池中获取对象
			javax.naming.Context context = new javax.naming.InitialContext();
			javax.sql.DataSource source = (javax.sql.DataSource) context
					.lookup("java:comp/env/hotel");
			connection = source.getConnection();
			// Class.forName(conn);
			// connection=DriverManager.getConnection(URL,USER,PASSWORD);
			// 把链接对象存储到tl中
			tl.set(connection);
		}
	}

	private void setValues(Object... values) throws SQLException {
		if (values != null && values.length > 0) {
			for (int i = 0; i < values.length; i++) {
				pre.setObject(i + 1, values[i]);
			}
		}
	}

	// 第三步为赋值
	private void setparameter(Object... values) throws SQLException {
		if (values != null && values.length > 0) {
			for (int i = 0; i < values.length; i++) {
				pre.setObject(i + 1, values[i]);
			}
		}
	}

	// 第三步 增删改sql语句
	public int executeUpdate(String sql, Object... values) throws Exception {
		// 获取链接
		getConnection();
		// 将编译的sql语句发送到数据库中
		pre = tl.get().prepareStatement(sql);
		setparameter(values);
		// 返回int型的执行结果
		int result = pre.executeUpdate();
		return result;

	}

	// 类型参数化
	public <T> List<T> executeQuery(String sql, IRowMapper<T> mapper,
			Object... values) throws Exception {
		getConnection();
		pre = tl.get().prepareStatement(sql);
		setparameter(values);
		List<T> list = new ArrayList<T>();
		rs = pre.executeQuery();
		while (rs.next()) {
			T t = mapper.rowMapper(rs);
			list.add(t);
		}
		return list;
	}

	// 第四步查询语句
	public ResultSet executeQuery(String sql, Object... values)
			throws Exception {
		getConnection();
		pre = tl.get().prepareStatement(sql);
		setparameter(values);
		rs = pre.executeQuery();
		return (ResultSet) rs;
	}

	/**
	 * 
	 * 聚合函数处理业务
	 * 
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 * */

	public Object executeScalar(String sql, Object... values) throws Exception,
			ClassNotFoundException {
		Object res = 0;
		getConnection();
		pre = tl.get().prepareStatement(sql);
		setparameter(values);
		rs = pre.executeQuery();
		if (rs.next()) {
			res = rs.getInt(1);
		}
		return res;
	}

	/**
	 * 设置事务保存点
	 * 
	 * @throws SQLException
	 * */
	public Savepoint setSavePoint(String savePointName) throws SQLException {
		return tl.get().setSavepoint(savePointName);
	}

	/**
	 * 开始事务
	 * 
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 * @throws NamingException
	 * */
	public void beginTrans() throws SQLException, ClassNotFoundException,
			NamingException {
		if (tl.get() != null && tl.get().isClosed() == false) {
			tl.get().setAutoCommit(false);
		} else {
			getConnection();
			tl.get().setAutoCommit(false);
		}
	}

	/**
	 * 提交事务
	 * 
	 * @throws SQLException
	 * */
	public void commit() throws SQLException {
		tl.get().commit();
	}

	/**
	 * 回滚事务
	 * 
	 * @throws SQLException
	 * */
	public void rollback() throws SQLException {
		tl.get().rollback();
	}

	// 第五步关闭资源
	public void close() throws SQLException {
		if (rs != null) {
			rs.close();
			rs = null;
		}
		if (pre != null) {
			pre.close();
			pre = null;
		}
		if (tl.get() != null && tl.get().isClosed() == false) {
			tl.get().close();
			tl.remove();
		}
	}
}
