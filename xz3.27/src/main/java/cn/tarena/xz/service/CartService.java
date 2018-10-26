package cn.tarena.xz.service;

import java.util.ArrayList;

import cn.tarena.xz.pojo.Cart;

public interface CartService {
	
	//将用户所选的商品添加到购物车中
	public void saveCart(String userId, String goodsId, int count);
	
	//分页查找userId对应的所有goodsId
	public ArrayList<Cart> getCartByUserId_NP(String userId, Integer currentNum, Integer currentPage);

	public Integer getCartTotalByUserId(String userId);

	//改变购物车商品的数量
	public void updateNumById(String userId, String goodsId, int num);

	public void delById(String userId, String goodsId);

	public void deleteAll(String userId);



	
}
