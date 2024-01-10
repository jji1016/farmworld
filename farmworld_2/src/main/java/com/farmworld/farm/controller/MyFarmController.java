package com.farmworld.farm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

}
