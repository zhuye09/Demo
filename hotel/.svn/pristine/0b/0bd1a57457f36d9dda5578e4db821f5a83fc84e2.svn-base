package cn.sendto.hotel.services;

import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.dao.UserDao;
import cn.sendto.hotel.dao.UserRoleDao;
import cn.sendto.hotel.models.UserModel;
import cn.sendto.hotel.models.UserRoleModel;
import cn.sendto.hotel.view.OrderUserCountVO;

/**
 * 用户相关的业务方法类
 * @author Administrator
 *
 */
public class UserService {
	//定义日志对象
	private static Logger logger = Logger.getLogger(UserService.class);
	
	private UserDao dao=new UserDao();
	/**
	 * 分页查询用户信息
	 * */
	public List<UserModel> findAll(int pageIndex,int pageSize)throws Exception{
		 return dao.findAll(pageIndex,pageSize);
	 }
	/***
	 * 按照id查询用户信息
	 * */
	public List<UserModel> findById(int id)throws Exception{
		 return dao.findById(id);
	 }
	/***
	 * 按照角色查询用户信息
	 * */
	public List<UserModel> findByRoleId()throws Exception{
		 return dao.findByRoleId();
	 }
	
	/**
	 * 按照userName查询用户信息
	 * */
	public int findByName(String userName)throws Exception{
		 return dao.findByName(userName);
	 }
	/**
	 * 更新用户信息
	 * @throws Exception 
	 * */
	 public int update(UserModel model) throws Exception {
		 
		 try {
			logger.info(model.getUserName()+"修改用户！");
			return dao.update(model);
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("修改失败！原因是："+e.getMessage());
			throw e;
		}
	 }
	 public int Editupdate(UserModel model) throws Exception{
		 return dao.Editupdate(model);
	 }
	 /**
	  * 删除用户信息
	  * */
	 public int delete(int id) throws Exception{
		 return dao.delete(id);
	 }
	 /**
	  * 按照用户名和密码查询用户信息
	 * @throws Exception 
	  * */
	 public List<UserModel> findUser(UserModel model) throws Exception {
		 
		 try {
			logger.info(model.getUserName()+"准备登录！");
			return dao.findUser(model);
			
		} catch (Exception e) {
			logger.info(model.getUserName()+"登录失败，原因是："+e.getMessage());
			e.printStackTrace();
			throw e;
		}
	 }
	 /**
	  * 查询用户总记录数
	  * */
	 public int findAllCount() throws SQLException {
			return dao.findAllCount();
		}
	 /**
	  * 添加   （事务）
	  * */
	 public int addByTrans(UserModel model,UserRoleModel model2) throws Exception{
		 int j=dao.findByName(model.getUserName());
		int i=0;
		 if(j>0){
			 return i;
		 }
		 UserRoleDao userRoleDao = new UserRoleDao();
		 try{
			 logger.info(model.getUserName()+"添加用户");
		 dao.beginTrans();
		i += userRoleDao.add(model2);
		 i += dao.add(model);
			dao.commit();
		 }catch (Exception e){
			 logger.info("添加用户失败！原因是："+e.getMessage());
			dao.rollback();
		 }finally{
			dao.closeConnect();
			}
			return i;
	 }
	 
	 /**
		 * 使用VO对用户工作量统计
		 * 对应的封装类为OrderUserCountModel
		 * VO 为OrderUserCountVO
		 */
	 public List<OrderUserCountVO> findWorkerSum(String startDate,String endDate){
		 return dao.findWorkerSum(startDate, endDate);
	 }
	 
	 public List<OrderUserCountVO> findWorkerSumDay(String startDate){
		 return dao.findWorkerSumDay(startDate);
	 }
}
