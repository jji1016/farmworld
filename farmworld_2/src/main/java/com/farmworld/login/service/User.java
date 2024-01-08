package com.farmworld.login.service;

import com.farmworld.all.service.Generic;
import com.farmworld.login.domain.UserVO;

public interface User extends Generic<VO, K> {

	public String idCheck(UserVO vo);
	
	public void login(UserVO vo);
	
	public VO findId(UserVO vo);
	
	public void pwReset(UserVO vo);
	
	public void logout();
	
	public boolean isAdmin(UserVO vo);
}
