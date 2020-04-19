package com.chinasoft.pojo;

public class Ordermessage {

	private int oid;
	private String otime;
	private String osuretime;
	private Users u;
	private String kd;
	private String address;
	private double omoney;
	private String ostatus;
	private String otype;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public String getOsuretime() {
		return osuretime;
	}
	public void setOsuretime(String osuretime) {
		this.osuretime = osuretime;
	}
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	public String getKd() {
		return kd;
	}
	public void setKd(String kd) {
		this.kd = kd;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getOmoney() {
		return omoney;
	}
	public void setOmoney(double omoney) {
		this.omoney = omoney;
	}
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}
	public String getOtype() {
		return otype;
	}
	public void setOtype(String otype) {
		this.otype = otype;
	}
	public Ordermessage(int oid, String otime, String osuretime, Users u,
			String kd, String address, double omoney, String ostatus,
			String otype) {
		super();
		this.oid = oid;
		this.otime = otime;
		this.osuretime = osuretime;
		this.u = u;
		this.kd = kd;
		this.address = address;
		this.omoney = omoney;
		this.ostatus = ostatus;
		this.otype = otype;
	}
	public Ordermessage() {
		super();
	}
	
}
