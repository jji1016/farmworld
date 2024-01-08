package com.farmworld.farm.service;

import java.util.List;

import com.farmworld.all.service.Generic;
import com.farmworld.farm.domain.GrowUpVO;

public interface GrowUp extends Generic<VO, K> {

	public List<GrowUpVO> growAll();
	
	public List<GrowUpVO> searchGrow(Criteria cri);
	
	public int getTotal(Criteria cri);
}
