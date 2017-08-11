package cn.sendto.hotel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;








import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.CustMapper;
import cn.sendto.hotel.mappers.OrderUserCountMapper;
import cn.sendto.hotel.mappers.UserMapper;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.view.OrderUserCountVO;

public class UserDao extends BaseDao {
	
	private DBHelper helper=new DBHelper();
	/**
	 * 分页查询用户信息
	 * @throws Exception 
	 * */
	public List<UserModel> findAll(int pageIndex,int pageSize) throws Exception {
		List<UserModel> list=new ArrayList<UserModel>();
		try{
		//
		String sql="SELECT * FROM user_role AS ur LEFT JOIN USER AS u ON ur.user_id=u.id LEFT JOIN role AS r ON ur.role_id=r.id where u.dropState=1 limit ?,?";
		Object values[]=new Object[]{(pageIndex-1)*pageSize,pageSize};
		list=helper.executeQuery(sql, new UserMapper(), values);
		}catch(Exception e){
			e.printStackTrace();
			//错误日志记录程序发生的错误
		}finally{
			helper.close();
		}
		return list;
	}
	
	/**
	 * 按照userName查询
	 * @throws Exception 
	 * */
	public int findByName(String userName) throws Exception {
		//List<UserModel> list=new ArrayList<UserModel>();
		int i=0;
		try{
		String sql="select * from USER where userName=?";
		ResultSet rs=helper.executeQuery(sql, userName);
		if (rs.next()) {
			return 1;
		}else{
			return i;
		}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	/**
	 * 添加用户信息
	 * @throws Exception 
	 * */
	public int add(UserModel model) throws Exception {
		int i=0;
		String sql="insert into USER(userName,userPass,trueName,gender,tel,enrollDate,state,headerimage,dropState)values(?,?,?,?,?,?,?,?,?)";
		Object[]values=new Object[]{model.getUserName(),model.getUserPass(),model.getTrueName(),model.getGender(),model.getTel(),model.getEnrollDate(),model.getState(),model.getHeaderimage(),model.getDropState()};
		i=helper.executeUpdate(sql, values);
		return i;
	}
	/**
	 * 修改
	 * @throws Exception 
	 * */
	public int update(UserModel model) throws Exception {
		int i=0;
		try {
		String sql="update USER set userName=?,userPass=?,trueName=?,gender=?,tel=?,enrollDate=?,state=?,headerimage=?,dropState=? where id=?";
		Object[]values=new Object[]{model.getUserName(),model.getUserPass(),model.getTrueName(),model.getGender(),model.getTel(),model.getEnrollDate(),model.getState(),model.getHeaderimage(),model.getDropState(),model.getId()};
			i=helper.executeUpdate(sql, values);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	/**
	 * 编辑用户信息
	 * */
	public int Editupdate(UserModel model) throws Exception {
		int i=0;
		try {
		String sql="update USER u, user_role ur set u.userName=?,u.trueName=?,u.gender=?,u.tel=?,u.enrollDate=?,ur.role_id=? where u.id=?";
		Object[]values=new Object[]{model.getUserName(),model.getTrueName(),model.getGender(),model.getTel(),model.getEnrollDate(),model.getRole_id(),model.getId()};
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
			String sql="delete from USER where id=?";
			i=helper.executeUpdate(sql, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			helper.close();
		}
		return i;
	}
	/**
	 * 
	 * 按照用户名和用户密码查询用户信息*/
	public List<UserModel> findUser(UserModel model) throws Exception {
		List<UserModel> list = null;
		try {
		String sql="SELECT * FROM user_role AS ur LEFT JOIN USER AS u ON ur.user_id=u.id LEFT JOIN role AS r ON ur.role_id=r.id WHERE userName=? AND userPass = ?";
		Object[]values=new Object[]{model.getUserName(),model.getUserPass()};
		list = helper.executeQuery(sql, new UserMapper(), values);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			helper.close();
		}
		return list;
	}
	/**
	 * 按照id查询
	 * */
	public List<UserModel> findById(int id) throws SQLException {
		List<UserModel> list=new ArrayList<UserModel>();
		try{ 
		String sql="SELECT * FROM user_role AS ur LEFT JOIN USER AS u ON ur.user_id=u.id LEFT JOIN role AS r ON ur.role_id=r.id WHERE u.id=?";
		list= helper.executeQuery(sql, new UserMapper(), id);
		}catch(Exception e){
			e.printStackTrace(); 
		}finally{
			helper.close();
		}
		return list;
	}
	/**
	 * 按照roleid查询
	 * */
	public List<UserModel> findByRoleId() throws SQLException {
		List<UserModel> list=new ArrayList<UserModel>();
		try{ 
		String sql="SELECT * FROM user_role AS ur LEFT JOIN USER AS u ON ur.user_id=u.id LEFT JOIN role AS r ON ur.role_id=r.id WHERE r.roleName  LIKE'%管理%'";
		list= helper.executeQuery(sql, new UserMapper());
		}catch(Exception e){
			e.printStackTrace(); 
		}finally{
			helper.close();
		}
		return list;
	}
	
	/**
	 * 统计总记录数
	 * */
	public int findAllCount() throws SQLException {
		int count=0;
		String sql = "select count(*) from user where dropState=1";
		try {
			count = (Integer)dbHelper.executeScalar(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				helper.close();
		}
		return count;
	}
	/**
	 * 使用VO对用户工作量统计
	 * 对应的封装类为OrderUserCountModel
	 * VO 为OrderUserCountVO
	 */
	public List<OrderUserCountVO> findWorkerSum(String startDate,String endDate){
		List<OrderUserCountVO> list = null;	
		try {
			String sql = "SELECT userName,liveDate,COUNT(userName) AS cnt FROM "
					+"USER AS us LEFT JOIN orderlist AS orl ON us.id=orl.userId "
					+"WHERE liveDate BETWEEN '"+startDate+"' AND '"+endDate+"' GROUP BY userName";
			list = helper.executeQuery(sql,new OrderUserCountMapper());
			if(list != null && list.size() > 0){
				return list;
			}else{
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 使用VO对用户工作量统计
	 * 对应的封装类为OrderUserCountModel
	 * VO 为OrderUserCountVO
	 */
	public List<OrderUserCountVO> findWorkerSumDay(String startDate){
		List<OrderUserCountVO> list = null;	
		try {
			String sql = "SELECT userName,liveDate,COUNT(userName) AS cnt FROM "
					+"USER AS us LEFT JOIN orderlist AS orl ON us.id=orl.userId "
					+"WHERE liveDate = ?  GROUP BY userName";
			list = helper.executeQuery(sql,new OrderUserCountMapper(),startDate);
			if(list != null && list.size() > 0){
				return list;
			}else{
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
