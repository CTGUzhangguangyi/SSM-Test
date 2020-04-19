package com.chinasoft.pojo;

public class Shoppingcart {

	private int sid;
	private Users u;
	private int pnumber;
	private Product p;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	public int getPnumber() {
		return pnumber;
	}
	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}
	public Product getP() {
		return p;
	}
	public void setP(Product p) {
		this.p = p;
	}
	public Shoppingcart(int sid, Users u, int pnumber, Product p) {
		super();
		this.sid = sid;
		this.u = u;
		this.pnumber = pnumber;
		this.p = p;
	}
	public Shoppingcart() {
		super();
	}
	
}
