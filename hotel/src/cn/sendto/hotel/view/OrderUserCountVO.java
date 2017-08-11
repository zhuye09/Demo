package cn.sendto.hotel.view;

public class OrderUserCountVO {
	private String liveDate;
	private String userName;
	private int cnt;
	
	
	
	
	public OrderUserCountVO() {
		super();
	}
	
	
	public OrderUserCountVO(String liveDate, String userName, int cnt) {
		super();
		this.liveDate = liveDate;
		this.userName = userName;
		this.cnt = cnt;
	}


	public String getLiveDate() {
		return liveDate;
	}
	public void setLiveDate(String liveDate) {
		this.liveDate = liveDate;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
}
