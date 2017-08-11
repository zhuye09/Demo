package cn.sendto.hotel.services;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.dao.CustDao;
import cn.sendto.hotel.dao.CustOrderDao;
import cn.sendto.hotel.dao.OrderListDao;
import cn.sendto.hotel.dao.RoomsDao;
import cn.sendto.hotel.models.CountIncomeVO;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.CustOrderModel;
import cn.sendto.hotel.models.OrderListModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.view.OrderUserModel;

/**
 * 订单相关的业务方法类
 * 
 * @author eiah
 */
public class OrderListService {
	CustDao custDao=new CustDao();
	OrderListDao orderListDao = new OrderListDao();
	RoomsDao rDao = new RoomsDao();
	CustOrderDao coDao = new CustOrderDao();
	
	//定义日志对象
	private static Logger logger = Logger.getLogger(OrderListService.class);
	
	public List<OrderListModel> findAll() throws Exception {
		return orderListDao.findAll();
	}

	/**
	 * VO查询数据
	 * 
	 * @return
	 * @throws Exception
	 */
	public OrderUserModel findAllOrderUser(int id) throws Exception {
		return orderListDao.findAllOrderUser(id);
	}

	/**
	 * 通过事务多表添加
	 * 
	 * @param olm
	 * @param rm
	 * @return
	 * @throws Exception
	 */
	public int addOrder(List<CustModel> cusList,List<OrderListModel> orderList,List<RoomsModel> roomsList) throws Exception {
		try {
			
			List<Integer> list1 = new ArrayList<Integer>();
			List<Integer> list2 = new ArrayList<Integer>();
			int i = 0;
			// 开始事务
			orderListDao.beginTrans();
			
			// 添加客户信息
			for (int j = 0; j < cusList.size(); j++) {
				CustModel cModel = custDao.add(cusList.get(j));
				if (cModel != null) {
					list1.add(cModel.getId());
				}	
			}
			
			// 添加订单信息
			for (int o = 0; o < orderList.size(); o++) {
				OrderListModel orderListModel = orderListDao.addOrder(orderList.get(o));
				if (orderListModel != null) {
					list2.add(orderListModel.getId());
				}
			}
			
			// 修改房间状态
			for (int r = 0; r < roomsList.size();r++) {
				int state = rDao.updateRoomState(roomsList.get(r));
				if (state != 1) {
					throw new RuntimeException("修改房间状态信息出现异常");
				}
			}

			// 客户订单表操作
			int w = list1.size()-list2.size();
			for (int o = 0 ; o < list2.size(); o++,++w) {
				
				CustOrderModel coModel = new CustOrderModel();
				
				coModel.setCustomer_id(list1.get(w));
				coModel.setOrderlist_id(list2.get(o));
				
				int state  = coDao.add(coModel);
				if (state != 1) {
					throw new RuntimeException("添加客户订单表信息出现异常");
				}
			}

			// 提交事务
			orderListDao.commit();
			
			return i;
		} catch (Exception e) {
			orderListDao.rollback();
			logger.info("订单创建失败，原因："+e.getMessage());
			e.printStackTrace();
			throw e;
		} finally {
			// 关闭资源
			orderListDao.closeConnect();
		}
	}

	/**
	 * 修改
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	public int update(OrderListModel model) throws Exception {
		return orderListDao.update(model);
	}
	/**
	 * 修改事务
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */

	public int updateOrderRoom(OrderListModel m1, RoomsModel m2)
			throws Exception {
		int i = 0;
		// 开始事务
		orderListDao.beginTrans();
		// 执行sql语句
		i += orderListDao.update(m1);
		i += rDao.update(m2);
		// 提交事务
		orderListDao.commit();
		orderListDao.closeConnect();
		return i;
	}

	public int delete(int id) throws Exception {
		return orderListDao.delete(id);
	}

	/**
	 * 条件查询收益
	 * 
	 * */
	public List<CountIncomeVO> countIncome(CountIncomeVO countIncomeVO)
			throws Exception {
		return orderListDao.countIncome(countIncomeVO);
	}

	/**
	 * @throws SQLException
	 * 
	 */
	public OrderListModel findOrederById(int id) throws SQLException {
		return orderListDao.findOrederById(id);
	}

	/**
	 * 查询所有订单的总记录条数
	 * @return
	 * @throws Exception 
	 */

	public int findAllOrderListCount() throws Exception {
		return orderListDao.findAllOrderListCount();
	}


	/**
	 * 根据条件查询 符合条件的所有记录条数
	 * @param where
	 * @return
	 * @throws Exception 
	 */
	public int findAllOrderListCount(String where) throws Exception {
		return orderListDao.findAllOrderListCount(where);
	}

	/**
	 * 带条件的分页查询所有的订单信息
	 * @param pageIndex
	 * @param pageSize
	 * @param where
	 * @return List<OrderListModel>
	 * @throws Exception 
	 */
	public List<OrderListModel> findAllOrderList(int pageIndex, int pageSize,
			String where) throws Exception {
		return orderListDao.findAllOrderList(pageIndex, pageSize, where);
	}
	/**
	 * 带条件的分页查询所有的订单信息
	 * @param pageIndex
	 * @param pageSize
	 * @param where
	 * @return List<OrderListModel>
	 * @throws Exception 
	 */
	public List<OrderListModel> findAllOrderList1(int pageIndex, int pageSize,
			String where) throws Exception {
		return orderListDao.findAllOrderList1(pageIndex, pageSize, where);
	}
	
	/**
	 * 使用聚合函数查询空房量
	 */
	public List<OrderListModel> findCost(String startDate,String endDate){
		return orderListDao.findCost(startDate, endDate);
	}
	/***
	 * 按照订单id查询
	 */
	public List<OrderListModel> findListById(int id) throws SQLException{
		return orderListDao.findListById(id);
	}
	}
