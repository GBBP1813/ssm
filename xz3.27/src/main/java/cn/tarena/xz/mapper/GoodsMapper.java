package cn.tarena.xz.mapper;

import java.util.ArrayList;

import cn.tarena.xz.pojo.Goods;

public interface GoodsMapper {

	public Goods getGoodsByGoodsId(String goodsId);

	public ArrayList<Goods> getIndexGodos();

	public ArrayList<Goods> getTypeGoods(String id);
	
}
