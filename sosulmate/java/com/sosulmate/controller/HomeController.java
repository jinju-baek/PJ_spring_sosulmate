package com.sosulmate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sosulmate.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/home")
@Controller
public class HomeController {
	
	@Autowired
	BookService bService;
	
	@GetMapping("/")
	public String index() {
		log.info("▶▶▶▶▶▶▶▶▶▶ GET : Index page 출력 ◀◀◀◀◀◀◀◀◀◀");
		return "home/index";
	}
	
	@GetMapping("/booklist")
	public String booklistview(Model model){
		log.info("▶▶▶▶▶▶▶▶▶▶ GET  : Booklist page 출력 ◀◀◀◀◀◀◀◀◀◀");
		model.addAttribute("bookList", bService.selectBook());
		return "/home/booklist";
		
	}
	
}