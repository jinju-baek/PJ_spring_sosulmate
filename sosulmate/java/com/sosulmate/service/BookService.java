package com.sosulmate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sosulmate.domain.BookDTO;
import com.sosulmate.persistence.BookDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BookService {
	@Autowired
	BookDAO bDao;
	
	public List<BookDTO> selectBook(String platform) {
		log.info("********************ranking 서비스단");
		return bDao.selectBook(platform);
	}
	public List<BookDTO> selectList(String type) {
		log.info("********************BookList");
		return bDao.selectList(type);
	}

}
