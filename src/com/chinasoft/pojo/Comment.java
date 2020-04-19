package com.chinasoft.pojo;

/**
 * @author Administrator
 *
 */
public class Comment {
	private int cid;
	private Product p;
	private String content;
	private Users u;
	private int  star;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public Product getP() {
		return p;
	}
	public void setP(Product p) {
		this.p = p;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	public Comment(int cid, Product p, String content, Users u) {
		super();
		this.cid = cid;
		this.p = p;
		this.content = content;
		this.u = u;
	}
	public Comment() {
		super();
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public Comment(int cid, Product p, String content, Users u, int star) {
		super();
		this.cid = cid;
		this.p = p;
		this.content = content;
		this.u = u;
		this.star = star;
	}
	
}
