package com.chinasoft.pojo;

import java.util.List;

public class Product {
	private int pid;
	private String pname;
	private double price;
	private int pnumber;
	private String pimg;
	private String ptime;
	private String pstatus;
	private String pcolor;
	private String  ptype;
	private List<Comment> clist;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPnumber() {
		return pnumber;
	}
	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String getPtime() {
		return ptime;
	}
	public void setPtime(String ptime) {
		this.ptime = ptime;
	}
	public String getPstatus() {
		return pstatus;
	}
	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	


	public List<Comment> getClist() {
		return clist;
	}
	public void setClist(List<Comment> clist) {
		this.clist = clist;
	}
	
	public Product(int pid, String pname, double price, int pnumber,
			String pimg, String ptime, String pstatus, String pcolor,
			String ptype, List<Comment> clist) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.price = price;
		this.pnumber = pnumber;
		this.pimg = pimg;
		this.ptime = ptime;
		this.pstatus = pstatus;
		this.pcolor = pcolor;
		this.ptype = ptype;
		this.clist = clist;
	}
	public Product(int pid, String pname, double price, int pnumber,
			String pimg, String ptime, String pstatus, String pcolor,
			String ptype) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.price = price;
		this.pnumber = pnumber;
		this.pimg = pimg;
		this.ptime = ptime;
		this.pstatus = pstatus;
		this.pcolor = pcolor;
		this.ptype = ptype;
	}
	public Product() {
		super();
	}
	
}
