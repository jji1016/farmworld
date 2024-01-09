package com.farmworld.farm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/myfarm")
@Log4j
@AllArgsConstructor
public class MyFarmController {
	
	@GetMapping("/farmlist")
	public void farmlist() {
		
	}

}
