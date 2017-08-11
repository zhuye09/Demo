package cn.sendto.hotel.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import cn.sendto.hotel.mappers.CustMapper;
import cn.sendto.hotel.mappers.RoomTypeMapper;
import cn.sendto.hotel.mappers.RoomsMapper;
import cn.sendto.hotel.mappers.RoomsRoomtypeMapper;
import cn.sendto.hotel.models.CustModel;
import cn.sendto.hotel.models.RoomsModel;
import cn.sendto.hotel.view.RoomsRoomtype;

public class RoomsDao extends BaseDao {
	private DBHelper helper = new DBHelper();
	/**
	 * 查询所有
	 * 
	 * @throws Exception
	 * */
	public List<RoomsModel> findAll() throws Exception {
		List<RoomsModel> list = new ArrayList<RoomsModel>();
		try {
			String sql = "SELECT * FROM rooms AS r LEFT JOIN roomtype AS rt ON r.typeId=rt.id";
			list = helper.executeQuery(sql, new RoomsMapper(), null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			helper.close();
		}
		return list;
	}

	/**
	 * 添加
	 * 
	 * @throws Exception
	 * */
	public int add(RoomsModel model) throws Exception {
		int i = 0;
		try {
			String sql = "insert into rooms(id,typeId,positions,state)values(?,?,?,?)";
			Object[] values = new Object[] { model.getId(), model.getTypeId(),
					model.getPositions(), model.getState()};
			i = helper.executeUpdate(sql, values);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			helper.close();
		}
		return i;
	}

	/**
	 * 修改
	 * 
	 * @throws Exception
	 * */
	public int update(RoomsModel model) throws Exception {
			String sql = "update rooms set typeId=?,positions=?,state=? where id=?";
			Object[] values = new Object[] { model.getTypeId(),
					model.getPositions(), model.getState(), model.getId() };
			return helper.executeUpdate(sql, values);
	}

	/**
	 * 删除
	 * 
	 * @throws Exception
	 * */
	public int delete(int id) throws Exception {
		int i = 0;
		try {
			String sql = "delete from rooms where id=?";
			i = helper.executeUpdate(sql, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			helper.close();
		}
		return i;
	}

	/**
	 * 查询所有客房信息
	 * 
	 * @return list
	 */
	public List<RoomsRoomtype> findAllRoomsInfo() throws Exception {
		List<RoomsRoomtype> list = null;
		try {
			String sql = "select * from rooms r, roomtype rt where rt.id = r.typeId";
			list = helper.executeQuery(sql,new RoomsRoomtypeMapper());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			helper.close();
		}
		return list;
	}
	
	/**
	 * 根据房间号查询
	 * @return
	 * @throws Exception
	 */
	public RoomsModel findByRoomsId(String roomId) throws Exception {
		List<RoomsModel> list = null;
		try {
			String sql = "SELECT * FROM rooms AS r LEFT JOIN roomtype AS rt ON r.typeId=rt.id where r.id=?";
			list = helper.executeQuery(sql,new RoomsMapper(),roomId);
			return list.get(0);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			helper.close();
		}
		return null;
		
	}

	public int updateRoomState(RoomsModel model) throws Exception {
		String sql = "update rooms set state=? where id=?";
		Object[] values = new Object[] {model.getState(), model.getId() };
		return helper.executeUpdate(sql, values);
	}
}
