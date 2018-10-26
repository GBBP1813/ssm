package cn.tarena.xz.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.CartMapper;
import cn.tarena.xz.pojo.Cart;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartMapper cartMapper;
	@Override
	public void saveCart(String userId,String goodsId,int count){
		Cart cart=cartMapper.findCartById(userId,goodsId);
		if(cart==null){
				//购物车中原来没有此条目，需要新增数据
				cartMapper.saveCart(userId,goodsId,count);
			}else{
				cartMapper.updateCart(userId,goodsId,count+cart.getCount());
			}
		}
	@Override
	public ArrayList<Cart> getCartByUserId_NP(String userId, Integer currentNum, Integer currentPage) {
		// TODO Auto-generated method stub
		
		return cartMapper.getCartByUserId_NP(userId,(currentPage-1)*currentNum,currentNum);
		
	}
	@Override
	public Integer getCartTotalByUserId(String userId) {
		// TODO Auto-generated method stub
		return cartMapper.getCartTotalByUserId(userId);
	}
	
	@Override
	public void updateNumById(String userId, String goodsId, int num) {
		cartMapper.updateCart(userId,goodsId,num);
	}
	@Override
	public void delById(String userId, String goodsId) {
		
		cartMapper.delById(userId, goodsId);
	}
	@Override
	public void deleteAll(String userID) {
		cartMapper.deleteAll(userID);
	}
	
}
