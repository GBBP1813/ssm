package cn.tarena.xz.service;

import java.util.ArrayList;

import cn.tarena.xz.pojo.Goods;

public interface GoodsService {
	
	
	//通过GoodsId查找商品信息
	public Goods getGoodsByGoodsId(String goodsId);

	public ArrayList<Goods> getIndexGoods();

	public ArrayList<Goods> getTypeGoods(String id);
}
