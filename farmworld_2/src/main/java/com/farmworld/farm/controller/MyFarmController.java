package com.farmworld.farm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String register(MyFarmVO myFarmVO) {
		
		return "redirect:/myfarm/farmlist";
	}

}
