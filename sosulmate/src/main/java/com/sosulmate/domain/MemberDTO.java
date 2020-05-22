package com.sosulmate.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class MemberDTO {
	private String number;
	private String email;
	private String useon;
	private String name;
	private String pw;
	private String tos;
	private String keyword;
	private String level;
	private Date regdate;

}
