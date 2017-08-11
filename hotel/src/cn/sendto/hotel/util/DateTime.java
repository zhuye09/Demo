package cn.sendto.hotel.util;

import java.util.Calendar;
import java.util.Date;

public class DateTime {
	
	//
	public Date getNextDay(Date date1){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date1);
		calendar.add(Calendar.DAY_OF_MONTH , +1);//今天的时间加1天
		date1=calendar.getTime();
		return date1;
	}
	//
	public Date getFrontDay(Date date2){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date2);
		calendar.add(Calendar.DAY_OF_MONTH , -1);//今天的时间减1天
		date2=calendar.getTime();
		return date2;
	}
	//
	public Date getFrontDay(Date date2,int num){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date2);
		calendar.add(Calendar.DAY_OF_MONTH , -num);//今天的时间减num天
		date2=calendar.getTime();
		return date2;
	}
}
