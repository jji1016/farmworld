package com.farmworld.farm.service;

import java.util.List;

import com.farmworld.all.service.Generic;
import com.farmworld.farm.domain.MyFarmVO;

public interface MyFarm extends Generic<VO, K> {
	
	public List<MyFarmVO> farmAll();
	
	public List<MyFarmVO> searchFarm(Criteria cri);
	
	public int getTotal(Criteria cri);
}
