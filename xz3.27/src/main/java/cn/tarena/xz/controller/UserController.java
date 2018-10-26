package cn.tarena.xz.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.tarena.xz.pojo.Goods;
import cn.tarena.xz.pojo.User;
import cn.tarena.xz.service.UserService;
import cn.tarena.xz.service.GoodsService;

@Controller
public class UserController {
	
	
	@Autowired
	public UserService userService;
	@Autowired
	private GoodsService goodsService;
	@RequestMapping("/user/toLogin")
	public String toLogin(){
		
		return "/login";
	}

	@RequestMapping("/user/toRegister")
	public String toRegister(){
		
		return "/reg";
	}
	
	
	@RequestMapping("/user/toLogout")
	public String toLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/user/toLogin";	
	}
	
	@RequestMapping("/user/login")
	public String login(String userName,String pwd,HttpSession session,Model model){
		//1.判断用户名和密码是否为有效数据
		if(StringUtils.isEmpty(userName)||StringUtils.isEmpty(pwd)){
			//提示用户名或者密码不能为空
			model.addAttribute("errInfo", "用户名或密码不能为空");
			
			return "/login";
		}
		
		//2.根据用户名和密码去数据库中查询对象
		User user=userService.findUserByUP(userName, pwd);
		
		//3.判断user对象是否为空
		if(user==null){
			//提示用户名或者密码错误
			model.addAttribute("errInfo", "用户名或密码错误");
			return "/login";
		}
		
		//4.证明用户名和密码都正确，将user对象存到session中，并重定向到首页
		session.setAttribute("user", user);
		model.addAttribute("usern",user.getName());
		
		return "redirect:/toIndex";
	}
	
	@RequestMapping("/toDetail")
	public String toDetail(String goodsId,Model model){
	
		Goods goods=goodsService.getGoodsByGoodsId(goodsId);
		
		model.addAttribute("goods",goods);
		return "item";
	}
	@RequestMapping("/toIndex")
	public String toIndex(Model model){
		
		ArrayList<Goods> goods=goodsService.getIndexGoods();

		for(int i=0;i<goods.size();i++){
			 //商品信息
			 //商品数量
			 Goods goodse = (Goods)goods.get(i);
			 
			 //将相关信息存在model对象中
			 model.addAttribute("goods"+i, goodse);
		}
		
//		model.addAttribute("goods",goods);
		
		return "/index";
	}
	
	// 注册
	@RequestMapping("/user/register")
	public String register(String userName, String pwd, String repwd, String name, String sex, String phone,
			Model model) {
		// 1.有效
		if (StringUtils.isEmpty(userName) || StringUtils.isEmpty(pwd)) {
			// 提示不空
			model.addAttribute("errInfo", "用户名或密码不能为空");

			return "/reg";
		}

		// 2.查询
		User user = userService.findUserByUP(userName, pwd);

		// 3.判断
		if (user != null) {
			// 已存在
			model.addAttribute("errInfo", "用户名已存在");
			return "/reg";
		}
		

		else if(!pwd.equals(repwd)){ 
			//提示两次输入密码不一致 
			model.addAttribute("errInfo","密码不一致");
			return "/reg"; 
		}
		 
		else {

			int userIdCount = Integer.parseInt(userService.countUserId()) + 1;

			String userIdcount = String.valueOf(userIdCount);

			userService.saveUser(userIdcount, userName, pwd, name, sex, phone);
		}

		return "redirect:/user/toLogin";
	}
	
	//登录
	

}
