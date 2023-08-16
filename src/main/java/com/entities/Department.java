package com.entities;

public class Department {
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public Department(String deptName, String description) {
		super();
		this.deptName = deptName;
		this.description = description;
	}
	public Department(int deptId, String deptName, String description) {
		super();
		this.deptId = deptId;
		this.deptName = deptName;
		this.description = description;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	private int deptId;
	private String deptName;
	private String description;
	
}
