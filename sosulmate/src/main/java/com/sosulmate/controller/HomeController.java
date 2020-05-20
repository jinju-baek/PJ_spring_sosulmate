package com.sosulmate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/home")
@Controller
public class HomeController {
	
	@GetMapping("/booklist")
	public String booklistview(){
		log.info("▶▶▶▶▶▶▶▶▶▶ GET  : Booklist page 출력 ◀◀◀◀◀◀◀◀◀◀");
		
		return "/home/booklist";
		
	}
	
}
