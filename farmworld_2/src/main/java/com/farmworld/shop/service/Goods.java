package com.farmworld.shop.service;

import java.util.List;

import com.farmworld.all.service.Generic;
import com.farmworld.shop.domain.GoodsVO;

public interface Goods extends Generic<VO, K> {

	public List<GoodsVO> goodsAll();

	public List<GoodsVO> searchGoods(Criteria cri);
}
