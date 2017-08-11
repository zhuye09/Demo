package cn.sendto.hotel.mappers;

import java.sql.ResultSet;

import cn.sendto.hotel.models.CountIncomeVO;

public class CountIncomeMapper implements IRowMapper<CountIncomeVO> {
	@Override
	public CountIncomeVO rowMapper(ResultSet rs) throws Exception {
		CountIncomeVO countIncomeVO=new CountIncomeVO();
		countIncomeVO.setStartDate(rs.getString("startDate"));
		countIncomeVO.setEndDate(rs.getString("endDate"));
		countIncomeVO.setCountcost(rs.getFloat("countcost"));
		
		return countIncomeVO;
	}
}
