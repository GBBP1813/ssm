package cn.tarena.xz.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.GoodsMapper;
import cn.tarena.xz.pojo.Goods;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public Goods getGoodsByGoodsId(String goodsId) {
		// TODO Auto-generated method stub
		return goodsMapper.getGoodsByGoodsId(goodsId);
	}

	@Override
	public ArrayList<Goods> getIndexGoods() {
		return goodsMapper.getIndexGodos();
	}

	@Override
	public ArrayList<Goods> getTypeGoods(String id) {
		
		return goodsMapper.getTypeGoods(id);
	}

}
