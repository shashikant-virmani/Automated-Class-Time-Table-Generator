package com.entities;

public class Course {
	public Course(int id, String department, String cname, String branch, int semCount) {
		super();
		this.id = id;
		this.department = department;
		this.cname = cname;
		this.branch = branch;
		this.semCount = semCount;
	}
	static int count = 1;
	public Course(String department, String cname, String branch, int semCount) {
		super();
		this.id = count++;
		this.department = department;
		this.cname = cname;
		this.branch = branch;
		this.semCount = semCount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getSemCount() {
		return semCount;
	}
	public void setSemCount(int semCount) {
		this.semCount = semCount;
	}
	private int id;
	private String department;
	private String cname;
	private String branch;
	private int semCount;
	
}
