package cn.tarena.xz.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.Cart;

public interface CartMapper {

	public Cart findCartById(String userId, String goodsId);

	public void saveCart(@Param("userId")String userId, @Param("goodsId")String goodsId, @Param("count")Integer count);

	public void updateCart(@Param("userId")String userId,  @Param("goodsId")String goodsId,  @Param("count")Integer count);

	public ArrayList<Cart> getCartByUserId_NP(@Param("userId")String userId,@Param("page") int currentPage,@Param("num") Integer currentNum);

	public Integer getCartTotalByUserId(String userId);

	public void delById(@Param("userId")String userId, @Param("goodsId")String goodsId);

	public void deleteAll(String userId);

}
