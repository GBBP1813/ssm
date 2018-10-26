package cn.tarena.xz.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;

import cn.tarena.xz.pojo.Cart;
import cn.tarena.xz.pojo.Goods;
import cn.tarena.xz.pojo.User;
import cn.tarena.xz.service.CartService;
import cn.tarena.xz.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/toSort")
	public String toSort(String id,Model model){
	
		System.out.println(id);
		ArrayList<Goods> goods=goodsService.getTypeGoods(id);
		int x = goods.size();
		model.addAttribute("size",x);
		for(int i = 0; i < goods.size();i++){
			Goods goodse = (Goods)goods.get(i);
			model.addAttribute("goods"+i, goodse);
		}
		
		return "sort";
	}
	
	@RequestMapping("/toDel")
	public String toDel(String goodsId,HttpSession session){
		
		String userId=null;
		if(session.getAttribute("user")!=null){
			userId=((User)session.getAttribute("user")).getUserId();
		}
		
		if(userId==null){
			return "redirect:/user/toLogin";
		}
		
		cartService.delById(userId,goodsId);
		return "redirect:/goods/toCart";
	}
	
	
	@RequestMapping("/toProduct")
	public String toProduct(Model model){
		ArrayList<Goods> goods=goodsService.getIndexGoods();
		
		int x=goods.size();
		model.addAttribute("size",x);
		for(int i=0;i<goods.size();i++){
			 //商品信息
			 //商品数量
			 Goods goodse = (Goods)goods.get(i);
			 
			 //将相关信息存在model对象中
			 model.addAttribute("goods"+i, goodse);
		}
		
		return "product";
	}
	
	@RequestMapping("/toDetail")
	public String toDetail(String goodsId,Model model){
	
		Goods goods=goodsService.getGoodsByGoodsId(goodsId);
		
		model.addAttribute("goods",goods);
		return "item";
	}
	@RequestMapping("/addCart")
	public String addCart(String goodsId,String count,HttpSession session){
		
		//1.判断用户是否已经登陆
		//String userId=((User)session.getAttribute("user")==null)? null:((User)session.getAttribute("user")).getUserId();
		String userId=null;
		if(session.getAttribute("user")!=null){
			userId=((User)session.getAttribute("user")).getUserId();
		}
		
		if(userId==null){
			return "redirect:/user/toLogin";
		}
		cartService.saveCart(userId,goodsId,Integer.parseInt(count));
		
		return "redirect:/goods/toDetail?goodsId=" + goodsId;
	}
	
	
	@RequestMapping("/toCart")
	public String toCart(String currentSize,String page,HttpSession session,Model model){
		//1.判断用户是否已经登陆
		//String userId=((User)session.getAttribute("user")==null)? null:((User)session.getAttribute("user")).getUserId();
		String userId=null;
		if(session.getAttribute("user")!=null){
			userId=((User)session.getAttribute("user")).getUserId();
		}
		
		if(userId==null){
			return "redirect:/user/toLogin";
		}
		//2.获取当前能显示的条数和当前页，如果为空的话，则设置为默认值
		Integer currentNum=currentSize==null?5:Integer.parseInt(currentSize);
		Integer currentPage=page==null?1:Integer.parseInt(page);
		model.addAttribute("beforeSize",currentNum);//是为了页面上的下拉选值显示使用
		model.addAttribute("currentPage", currentPage);
		
		//3.根据userId找到该用户的购物车中有哪些goodsId和对应的数量，并进行分页（需要num和page）
		ArrayList<Cart> carts=cartService.getCartByUserId_NP(userId,currentNum,currentPage);
		//为了控制页面上商品信息显示时的循环次数
		model.addAttribute("size", carts.size());
		//4.根据cart中的goodsId查找其对应的商品信息
		for(int i=0;i<carts.size();i++){
			 String goodsId=carts.get(i).getGoodsId();
			 //商品信息
			 Goods goods=goodsService.getGoodsByGoodsId(goodsId);
			 //商品数量
			 Integer count=carts.get(i).getCount();
			 
			 //将相关信息存在model对象中
			 model.addAttribute("goods"+i, goods);
			 model.addAttribute("count"+i, count);
		}
		
		//5.查询用户购物车中的总商品数量
		Integer total=cartService.getCartTotalByUserId(userId);
		int pages=total%currentNum==0?total/currentNum:total/currentNum+1;
		model.addAttribute("pages", pages);
		
		return "cart_view";
	}
	
	@RequestMapping("/changeNum")
	public String changeNum(String num,String goodsId,HttpSession session){
		//1.判断用户是否已经登陆
		//String userId=((User)session.getAttribute("user")==null)? null:((User)session.getAttribute("user")).getUserId();
		String userId=null;
		if(session.getAttribute("user")!=null){
			userId=((User)session.getAttribute("user")).getUserId();
		}
		
		if(userId==null){
			return "redirect:/user/toLogin";
		}
		
		//2.参数的校验
		//TODO ...
		
		//3.改变购物车中某个商品的数量
		cartService.updateNumById(userId,goodsId,Integer.parseInt(num));
		
		return "redirect:/goods/toCart";
	}
	
	@RequestMapping("/toDeleteall")
	public String toDeleteall(HttpSession session) {
		String userId=null;
		if(session.getAttribute("user")!=null) {
			userId= ((User)session.getAttribute("user")).getUserId();
		}
		if(userId==null) {
		 return "redirect:/user/toLogin";
		}
		
		cartService.deleteAll(userId);
		
		return"redirect:/goods/toCart" ;
		
	}
	
}
