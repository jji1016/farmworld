package com.farmworld.farm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmworld.all.domain.Criteria;
import com.farmworld.all.domain.pageDTO;
import com.farmworld.farm.service.MyFarm;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/farm/*")
@AllArgsConstructor 
@Log4j
public class MyFarmController {

	private final MyFarm myFarm;
	@GetMapping("/farmlist")
	public void list(Criteria cri, Model model) {
		log.info(cri.getType());

	}
}







