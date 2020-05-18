<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/adminsidebar.jsp"%>
<%@ include file="../include/adminsidebar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		.adminpage_member_wrap{
			width: 900px;
		}
		.member_title{
			font-size: 30px;
			font-weight: bold;
			padding: 0 0 5px 10px;
		}
		.member_header_wrap{
			display: flex;
			justify-content: space-between;
		}
		.member_sortbtn{
			display: flex;
		}
		.member_sortbtn button{
			border: 1px solid #9e9e9e;
			border-radius: 5px;
			margin: 0 3px;
			padding-bottom: 3px;
			background-color: white;
			color: #9e9e9e;
		}
		.member_table_wrap{
			border-collapse: collapse;
			border: 1px solid #D1D5D9;
			margin: 10px 0;
		}
		th, td{
			width: 150px;
			text-align: center;
			border: 1px solid #D1D5D9;
		}
		th{
			background-color: #F8F8F8;
		}
		.member_reader_btn{
			border: 1px solid #3498DB;
			border-radius: 5px;
			background-color: #3498DB;
			color: white;
			width: 70px;
			margin: 0 auto;
		}
		.member_writer_btn{
			border: 1px solid #F1C40F;
			border-radius: 5px;
			background-color: #F1C40F;
			color: white;
			width: 70px;
			margin: 0 auto;
		}
		.member_blacklist_btn{
			border: 1px solid black;
			border-radius: 5px;
			background-color: black;
			color: white;
			width: 100px;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<div class="adminpage_member_wrap">
		<div class="member_title">회원관리</div>
		<div class="member_header_wrap">
			<div class="member_search">
				<form method="" action="">
					<div class="mediumSearch">
						<i class="fas fa-search"></i>
						<input type="text" name="" placeholder="검색">
					</div>
				</form>
			</div>
			<div class="member_sortbtn">
				<button type="button">전체 회원</button>
				<button type="button">작가</button>
				<button type="button">독자</button>
				<button type="button">블랙리스트</button>
			</div>
		</div>
		<table class="member_table_wrap">
			<tr>
				<th>이메일</th>
				<th>등급</th>
				<th>작성글 수</th>
				<th>작성리뷰 수</th>
				<th>가입 날짜</th>
				<th>블랙리스트</th>
			</tr>
			<tr>
				<td>aa1@naver.com</td>
				<td><div class="member_writer_btn">독자</div></td>
				<td>1</td>
				<td>10</td>
				<td>2020.04.08</td>
				<td><div class="member_blacklist_btn">BLACK</div></td>
			</tr>
			<tr>
				<td>bb3@google.com</td>
				<td><div class="member_reader_btn">작가</div></td>
				<td>5</td>
				<td>0</td>
				<td>2019.06.10</td>
				<td></td>
			</tr>
		</table>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$('.member_sortbtn>button').click(function(){
			$('.member_sortbtn>button').css('background-color', 'white')
									   .css('color', '#9e9e9e');
			$(this).css('background-color', '#9e9e9e')
				   .css('border', '1px solid #9e9e9e')
				   .css('color', 'white');
		});
	});
</script>
</html>