package com.chinasoft.controller;

import java.io.Console;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.util.NewBeanInstanceStrategy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasoft.biz.CommentBiz;
import com.chinasoft.biz.OrderBiz;
import com.chinasoft.biz.ProductBiz;
import com.chinasoft.biz.ShoppingBiz;
import com.chinasoft.biz.UsersBiz;
import com.chinasoft.pojo.Ordermessage;
import com.chinasoft.pojo.Product;
import com.chinasoft.pojo.ShopingTabelDetail;
import com.chinasoft.pojo.Shoppingcart;
import com.chinasoft.pojo.Users;
import com.mysql.fabric.Response;

@Controller
@RequestMapping("/")
public class TestController {
	@Autowired
	private UsersBiz ub;
	@Autowired
	private ProductBiz  pb;
	@Autowired
	private ShoppingBiz sb;
	@Autowired
	private CommentBiz cb;
	@Autowired
	private OrderBiz ob;
	public UsersBiz getUb() {
		return ub;
	}

	public void setUb(UsersBiz ub) {
		this.ub = ub;
	}
	public ProductBiz getPb() {
		return pb;
	}

	public void setPb(ProductBiz pb) {
		this.pb = pb;
	}

	@RequestMapping("/login")
	public void test(String username,String password,HttpServletResponse response,HttpSession session) throws Exception{
		/*ModelAndView mav=new ModelAndView();*/
		boolean flag= false;
		
		/*登入时将购物车是否为空的flag存在session中*/
		boolean ShopCart_isEpy=true;
		session.setAttribute("ShopCart_isEpy_flag",ShopCart_isEpy);
		session.setAttribute("islogin_flag", flag);
		response.setCharacterEncoding("utf-8");
		Users u=ub.chechLogin(username, password);
		if(u!=null){
			
			/*登入成功后无跳转*/
			/*设置flag值为后续购物车点击和个人信息点击添加判断*/
			/*mav.setViewName("homepage.jsp");*/
			/*session.setAttribute("is_loginflag", true);*/
			
			flag=true;
			response.getWriter().print(flag);
			session.setAttribute("islogin_flag", true);
			session.setAttribute("uid",u.getUid());
			
			ShopCart_isEpy=sb.ajustShopCartIsEmpty(u.getUid());
			
			session.setAttribute("ShopCart_isEpy_flag",ShopCart_isEpy);
		}else{
			/*登入失败显示登入失败红字*/
			/*mav.addObject("msg", "bbbbbbbbbbbbb");*/
			/*mav.setViewName("homepage.jsp");*/
			/*session.setAttribute("is_loginflag", false);*/
			flag=false;
			response.getWriter().print(flag);
			session.setAttribute("islogin_flag", false);
			session.setAttribute("uid"," ");
		}
	/*	boolean ts= (Boolean) session.getAttribute("is_loginflag");
		System.out.println(ts);
		return mav;*/
	}
	
	
	@RequestMapping("/judgeShopEmptyAgain")
	public void judgeShopEmptyAgainrere(HttpSession session){

		int uid=(Integer) session.getAttribute("uid");
		boolean ShopCart_isEpy=sb.ajustShopCartIsEmpty(uid);
		session.setAttribute("ShopCart_isEpy_flag",ShopCart_isEpy);
	}
	@RequestMapping("/signin")
	public String addUsers(Users u){

		ub.UserSignin(u);
		return "redirect:loadingAfterSigninsuccess.jsp";
		
	}
	
	
	@RequestMapping("/isloginjust")
	public void Ajustislogin(HttpServletResponse response,HttpSession session) throws Exception{
			
		Boolean flag=(Boolean) session.getAttribute("islogin_flag");
		response.getWriter().print(flag);
	}
	
	/*判断是否登入，以及登入者购物车是否为空*/
	@RequestMapping("/isloginjustWithJudegeEmpty")
	public void AjustisloginWithJudegeEmpty(HttpServletResponse response,HttpSession session) throws Exception{
			
		List<Boolean> flagList=new ArrayList<Boolean>();
		Boolean flag1=(Boolean) session.getAttribute("islogin_flag");
		Boolean flag2=(Boolean) session.getAttribute("ShopCart_isEpy_flag");
		System.out.println("ShopCart_isEpy_flag"+flag2);
		flagList.add(flag1);
		flagList.add(flag2);
		JSONArray jsontt = JSONArray.fromObject(flagList);
		response.getWriter().print(jsontt.toString());
		
	}
	
	@RequestMapping("/ajustisNameUsed")
	public void selectByUsername(String username,HttpServletResponse response) throws Exception{
		
		boolean is_Has = false;
		Users u = ub.UserSigninAjust(username);
		if(u!=null)
		{
			is_Has=true;
		}
		else{
			is_Has=false;
		}
		response.getWriter().print(is_Has);	
	}
	
	@RequestMapping("/getphoneid")
	public void SelectByptype(String ptype,HttpServletResponse response) throws Exception
	{
			/*根据手机类型获得手机型号*/
		System.out.println(ptype);
		
		int pid=pb.Phonetype(ptype);
		System.out.println(pid);
		response.getWriter().print(pid);
	}
	
	@RequestMapping("/addintoshopcart")
	public void insertByPid(Integer pid,HttpSession session,HttpServletResponse response) throws Exception
	{
				
				int uid = (Integer) session.getAttribute("uid");
				System.out.println("uid:"+uid);
				System.out.println("pid:"+pid);
				int pnumber;
				
				/*通过uid pid 判断该物品是否已经添加到购物车*/
				boolean flag = sb.ajustisHasProBypidAnduid(uid, pid);
				
				System.out.println("isinshop:"+flag);
				/*如果存在该物体set number=number+1*/
				if(flag==true)
				{
					sb.addproductNumberplusone(uid, pid);
				}
				/*如果存在该物体不存在number=1*/
				else{
					pnumber=1;
					sb.addproducttoShopcart(uid,pnumber,pid);
				}
				
	}
	
	@RequestMapping("shop")
	public ModelAndView shop(){

		List<Shoppingcart> list=sb.getProductByUid(2);
		for (Shoppingcart object : list) {
			System.out.println(object.getP().getPname());
			System.out.println(object.getP().getPrice());
			System.out.println(object.getP().getPimg());
			System.out.println(object.getPnumber());
		}

		sb.updateNumberByUidAndPid(2, 16,-1);
		sb.deleteByUidAndPid(2,21);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Store.jsp");
		return mav;
	}
	
	
	/*若该用户购物车不为空时*/
	@RequestMapping("/getShopcartTableMsgByuidAndpid")
	public void  getShopcartTable(HttpSession session,HttpServletResponse response) throws Exception
	{
		List<ShopingTabelDetail> resList= new ArrayList<ShopingTabelDetail>();
		int uid=(Integer) session.getAttribute("uid");
		//System.out.println("uid"+uid);
		List<Shoppingcart> list=sb.getProductByUid(uid);
		
		for (Shoppingcart object : list) {
			ShopingTabelDetail temp = new ShopingTabelDetail();
			temp.setPid(object.getP().getPid());
			temp.setPname(object.getP().getPname());
			temp.setPimg(object.getP().getPimg());
			temp.setPnumber(object.getPnumber());
			temp.setPrice(object.getP().getPrice());
			resList.add(temp);
		}
		
		JSONArray jst = JSONArray.fromObject(resList);
		response.getWriter().print(jst.toString());
	}
	
	/*通过pid和uid异常购物车的指定商品*/
	@RequestMapping("/deleteProductByuidAndpid")
	public void deleteProductByuidAndpid(int pid,HttpSession session,HttpServletResponse response) throws Exception
	{
		
		int uid=(Integer) session.getAttribute("uid");
		sb.deleteByUidAndPid(uid, pid);
		
	}
	
	/*通过pid和uid动态增加物品数量*/
	@RequestMapping("/addgoodsnumberBypidanduid")
	public void addgoodsnumberBypidanduid(int pid,HttpSession session,HttpServletResponse response) throws Exception
	{
		
		int uid=(Integer) session.getAttribute("uid");
		int offset =1;
		sb.updateNumberByUidAndPid(uid, pid, offset);
		
	}
	
	
	/*通过pid和uid动态减少物品数量*/
	@RequestMapping("/reducegoodsnumberBypidanduid")
	public void reducegoodsnumberBypidanduid(int pid,HttpSession session,HttpServletResponse response) throws Exception
	{
		
		int uid=(Integer) session.getAttribute("uid");
		int offset =-1;
		sb.updateNumberByUidAndPid(uid, pid, offset);
		
	}
	
	/*插入评论*/
	@RequestMapping("/insertComment")
	public void insertComment(int pid,int uid,String content,int flag,HttpSession session,HttpServletResponse response) throws Exception
	{
		
		
		cb.insertComment(uid, pid, content,flag);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/kaishi")
	public ModelAndView kaishi(int uid,HttpSession session){
		ModelAndView mav = new ModelAndView();
		mav.addObject("u", ub.getUserById(uid));
		session.setAttribute("u", ub.getUserById(uid));
		mav.setViewName("MyMsg.jsp");
		return mav;
	}
	
	@RequestMapping("/orderByuid")
	public ModelAndView orderByuid(int uid){
		//System.out.println("++++++++++++++++++++++++++++++++++");
		ModelAndView mav = new ModelAndView();
		List<Ordermessage> olist=ob.showALLOrderByUid(uid);
		System.out.println("++++++"+olist.size());
		mav.addObject("olist", olist);
		mav.setViewName("order.jsp");
		return mav;
	}

	@RequestMapping("/collection")
	public ModelAndView collection(int uid){
		ModelAndView mav = new ModelAndView();
		List<Shoppingcart> slist=sb.getProductByUid(uid);
		mav.addObject("slist", slist);
		mav.setViewName("collection.jsp");
		for (Shoppingcart object : slist) {
			System.out.println(object.getP().getPname());
			System.out.println(object.getP().getPrice());
			System.out.println(object.getP().getPimg());
			System.out.println(object.getPnumber());
		}

		return mav;
	}
	@RequestMapping("/deleshop")
	public ModelAndView deleshop(int uid,int pid){
		ModelAndView mav = new ModelAndView();
		sb.deleteByUidAndPid(uid, pid);
		List<Shoppingcart> slist=sb.getProductByUid(uid);
		mav.addObject("slist", slist);
		mav.setViewName("collection.jsp");
		mav.setViewName("collection.jsp");
		return mav;
	}
	@RequestMapping("/MyMsg")
	public ModelAndView MyMsg(int uid){
		ModelAndView mav = new ModelAndView();
		 Users u= ub.getUserById(uid);
		mav.addObject("u", u);
		mav.setViewName("MyMsg.jsp");
		return mav;
	}
	@RequestMapping("/updatemsg")
	public ModelAndView updatemsg(String password ,int uid){
		ModelAndView mav = new ModelAndView();
		ub.updateUserPassword(password,uid);
		mav.addObject("u", ub.getUserById(uid));
		mav.setViewName("updatepassword.jsp");
		return mav;
	}
	@RequestMapping("/xiugai")
	public ModelAndView xiugai(String username,String phone,String email,String address,int uid){
		ModelAndView mav = new ModelAndView();
		System.out.println(username);
		ub.updateUser(username, phone, email, address,uid);
		mav.addObject("u", ub.getUserById(uid));
		mav.setViewName("MyMsg.jsp");
		return mav;
	}
	
}
