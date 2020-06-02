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

	public List<BookDTO> selectBook(String platform) {
		log.info("********************BookDAO_selectBook !!");
		Criteria cri = new Criteria(); 
		cri.orOperator(Criteria.where("platform").is(platform));
		Query query = new Query(cri);
		query.limit(500);
		List<BookDTO> list = mongoOper.find(query, BookDTO.class,"book"); // 컬렉션 명
		for(BookDTO one:list) {
			log.info(one.toString());
		}
//		List<BookDTO> list = mongoOper.findAll(BookDTO.class,"local.kakaopage");
	return list;
	}
	public List<BookDTO> selectList(String type) {
		log.info("********************BookDAO_BookList !!");
		Criteria cri = new Criteria(); 
		cri.orOperator(Criteria.where("type").is(type));
		Query query = new Query(cri);
		query.limit(50);
		List<BookDTO> list = mongoOper.find(query, BookDTO.class,"book"); // 컬렉션 명
		for(BookDTO one:list) {
			log.info(one.toString());
		}
	return list;
	}
}
