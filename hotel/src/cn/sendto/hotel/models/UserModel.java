package cn.sendto.hotel.models;

import java.io.Serializable;
import java.util.Date;

public class UserModel implements Serializable {
	private int id;
	private String userName;
	private String userPass;
	private String trueName;
	private String gender;
	private String tel;
	private Date enrollDate;
	private int state;
	private String headerimage;
	private int dropState;
	private String roleName;
	private int role_id;
	
	
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getHeaderimage() {
		return headerimage;
	}
	public void setHeaderimage(String headerimage) {
		this.headerimage = headerimage;
	}
	public int getDropState() {
		return dropState;
	}
	public void setDropState(int dropState) {
		this.dropState = dropState;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String string) {
		this.roleName = string;
	}
	public UserModel() {
		super();
	}
	public UserModel(int id, String userName, String userPass, String trueName,
			String gender, String tel, Date enrollDate, int state,
			String headerimage, int dropState, String roleName,int role_id) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPass = userPass;
		this.trueName = trueName;
		this.gender = gender;
		this.tel = tel;
		this.enrollDate = enrollDate;
		this.state = state;
		this.headerimage = headerimage;
		this.dropState = dropState;
		this.roleName = roleName;
		this.role_id = role_id;
	}
	
}