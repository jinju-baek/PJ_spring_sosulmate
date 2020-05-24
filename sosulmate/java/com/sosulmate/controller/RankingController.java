package com.sosulmate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sosulmate.domain.BookDTO;
import com.sosulmate.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ranking")
public class RankingController {
	@Autowired
	BookService bService;
	
	@GetMapping("/rankingHome")
	public String viewRanking(Model model) {
		log.info("********************rankingHome출력");
		model.addAttribute("bookList",bService.selectBook());


		return "/ranking/rankingHome";
	}
}
