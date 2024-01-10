package com.farmworld.farm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmworld.farm.domain.MyFarmVO;
import com.farmworld.farm.service.MyFarm;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/myfarm")
@Log4j
@AllArgsConstructor
public class MyFarmController {
	
	@Autowired
	private MyFarm myFarmService;
	
	@GetMapping("/farmlist")
	public void farmlist() {
		
	}
	@GetMapping("/register")
	public void registerget() {}
	
	@PostMapping("/register")
	public String register(HttpSession session, MyFarmVO myFarmVO) {
		Integer userNum = (Integer) session.getAttribute("user_num");
	    
	    if (userNum != null) {
	        // 세션에 저장된 user_num을 사용하는 코드
	        // userNum 변수에 세션에서 받아온 값이 저장됨
	    	myFarmService.add(myFarmVO);

	        // 뷰 페이지 이름 반환
	    	return "redirect:/myfarm/farmlist";
	    } else {
	        // user_num이 없는 경우에 대한 처리
	        return "redirect:/login"; // 로그인 페이지로 리다이렉트 또는 다른 처리
	    }
	}

}
