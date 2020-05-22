package com.sosulmate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ranking")
public class RankingController {
	
	@GetMapping("/rankingHome")
	public String viewRanking() {
		return "/ranking/rankingHome";
	}
}
