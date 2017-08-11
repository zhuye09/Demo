package cn.sendto.hotel.models;

import java.io.Serializable;
import java.util.List;

public class RoleModel implements Serializable {
	private int id;
	private String roleName;
	private String roleDesc;
	private int dropState;
	private String company;
	
	
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getRoleDesc() {
		return roleDesc;
	}
	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}
	public int getDropState() {
		return dropState;
	}
	public void setDropState(int dropState) {
		this.dropState = dropState;
	}
	public RoleModel(int id, String roleName, String roleDesc, int dropState) {
		super();
		this.id = id;
		this.roleName = roleName;
		this.roleDesc = roleDesc;
		this.dropState = dropState;
	}
	public RoleModel() {
		super();
	}
	
	
	
	
}
