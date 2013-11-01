package com.bjsxt.bbs;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Article {
	private int id;
	private int pid; //private Article parent
	private int rootId;
	private String title;
	private String writer1;
	private String cont;
	private Date pdate;
	private boolean isLeaf;
	private int grade;
	private int pno;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getRootId() {
		return rootId;
	}
	public void setRootId(int rootId) {
		this.rootId = rootId;
	}
	public String getWriter1() {
		return writer1;
	}
	public void setWriter1(String writer1) {
		this.writer1 = writer1;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public boolean isLeaf() {
		return isLeaf;
	}
	public void setLeaf(boolean isLeaf) {
		this.isLeaf = isLeaf;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int grade) {
		this.pno = pno;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			setId(rs.getInt("id"));
			setPid(rs.getInt("pid"));
			setRootId(rs.getInt("rootid"));
			setTitle(rs.getString("title"));
			setWriter1(rs.getString("writer"));
			setLeaf(rs.getInt("isleaf") == 0 ? true : false);
			setPdate(rs.getTimestamp("pdate"));
			setCont(rs.getString("cont"));
			setGrade(0);
			setPno(rs.getInt("pno"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
