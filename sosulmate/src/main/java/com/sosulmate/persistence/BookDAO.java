package com.sosulmate.persistence;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.sosulmate.domain.BookDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class BookDAO {
	@Autowired
	private MongoOperations mongoOper;
	// Oracle의 session같은 존재

	public List<BookDTO> selectBook() {
		log.info("********************rankingDAO!!");
		Criteria cri = new Criteria(); 
//		cri.where("type").is("판타지");
		Query query = new Query(cri);
		List<BookDTO> list = mongoOper.find(query, BookDTO.class,"local.kakaopage");
		for(BookDTO one:list) {
			log.info(one.toString());
		}
//		List<BookDTO> list = mongoOper.findAll(BookDTO.class,"local.kakaopage");
	return list;
	}
}
