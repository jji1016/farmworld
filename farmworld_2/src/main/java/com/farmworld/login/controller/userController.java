package com.farmworld.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user")
@AllArgsConstructor
@Log4j
public class userController {
	
	@GetMapping("/login")
	public String getLogin() {
		return "login";
	}
}
