package com.sosulmate.domain;

import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class BookDTO {
    private int bno;
    private String type;
    private String title;
    private String content; 
    private String writer;
    private String complete;
    private String platform;
    private String url;
    private String thumbnail;
}
