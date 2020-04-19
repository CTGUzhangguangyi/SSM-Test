package com.chinasoft.pojo;

public class ShopingTabelDetail {
		
		private int pid;
		private String pname;
		private double price;
		private String pimg;
		private int pnumber;
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
		public String getPimg() {
			return pimg;
		}
		public void setPimg(String pimg) {
			this.pimg = pimg;
		}
		public int getPnumber() {
			return pnumber;
		}
		public void setPnumber(int pnumber) {
			this.pnumber = pnumber;
		}
		public ShopingTabelDetail() {
			super();
			// TODO Auto-generated constructor stub
		}
		public ShopingTabelDetail(int pid, String pname, double price,
				String pimg, int pnumber) {
			super();
			this.pid = pid;
			this.pname = pname;
			this.price = price;
			this.pimg = pimg;
			this.pnumber = pnumber;
		}
		
		
}
