<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/adminSidebar.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>통계</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<script src="https://kit.fontawesome.com/e2a7455480.js" crossorigin="anonymous"></script>
	<style type="text/css">
		.adminpage_index_wrap{
			width: 900px;
			margin: 50px auto;
		}
		.adminpage_index_title{
			font-size: 30px;
			font-weight: bold;
		}
		/* statistics */
		.statistics_date{
			justify-content: flex-end;
			margin-right: 50px;
		}
		.statistics_date *{
			color: #656464;
			
		}
		.statistics_date span{
			margin-right: 10px;
		}
		.statistics_date button{
			border: 1px solid #d1d5d9;
			border-radius: 5px;
			margin: 0 3px;
			padding-bottom: 3px;
		}
		.statistics_count_wrap{
			margin: 0 50px;
			padding-top: 20px;
		}
		.statistics_count{
			width: 351px;
			font-size: 20px;
			text-align: center;
		}
		.statistics_count span{
			display: block;
			padding-top: 10px;
		}
		.statistics_graph{
			width: 47%;
			height: 300px;
			display: inline-block;
		}
		.statistics_graph_wrap{
			flex-direction: column;
			margin-top: 35px;
		}
		/*list*/
		.statistics_list_wrap{
			display: flex;
			flex-direction: column;
			width: 800px;
			margin: 50px auto 0;
		}
		.statistics_list{
			margin: 0 25px;
			border-bottom: 1px solid #e0e0e0;
			display: flex;
			justify-content: space-between;
		}
		.statistics_main{
			background-color: #d1d5d9;
		}
		.statistics_list > span{
			padding: 7px 20px;
			text-align: center;
			width: 250px;
			border-right: 1px solid #e0e0e0;
		}
		.statistics_list > span:last-child{
			border-right: none;
		}
		.statistics_main > span{
			font-weight: bold;
		}
		/**/
		.statistics_flex{
			display: flex;
		}
		.statistics_box{
			border: 1px solid #d1d5d9;
			margin: 10px;
			padding: 20px;		
		}
		.date_default{
			background-color: white;
			color: #9e9e9e;
		}
		.date_color{
			background-color: #9e9e9e;
			color: white;
		}
	</style>
</head>
<body>
	<div class="adminpage_index_wrap">
		<div>
			<div class="adminpage_index_title">소설메이트 통계</div>
			<div class="adminpage_statistics_wrap">
				<div>
					<div class="statistics_date statistics_flex">
						<span>2020.04.08 ~ 2020.04.08</span>
						<button class="date_color">오늘</button>
						<button class="date_default">최근7일</button>
						<button class="date_default">최근30일</button>
					</div>
					<div class="statistics_count_wrap statistics_flex">
						<div class="statistics_count statistics_box">
							가입자수
							<span>0</span>
						</div>
						<div class="statistics_count statistics_box">
							등록된 글 수
							<span>0</span>
						</div>
						<div class="statistics_count statistics_box">
							등록된 리뷰 수
							<span>0</span>
						</div>
					</div>
				</div>
				<div class="statistics_graph_wrap statistics_flex">
					<div>
						<div class="statistics_graph statistics_box">
							<div>총 회원 수</div>
							<div></div>
						</div>
						<div class="statistics_graph statistics_box">
							<div>회원 현황</div>
							<div></div>
						</div>
					</div>
					<div>
						<div class="statistics_graph statistics_box">
							<div>총 게시글 수</div>
							<div></div>
						</div>
						<div class="statistics_graph statistics_box">
							<div>총 리뷰 수</div>
							<div></div>
						</div>
					</div>
				</div>
				<div class="statistics_list_wrap">
					<div class="statistics_list statistics_main">
						<span>플랫폼</span>
						<span>Book</span>
						<span>Crawling Date</span>
					</div>
					<div class="statistics_list">
						<span>네이버시리즈</span>
						<span>123456</span>
						<span>2020-04-08</span>
					</div>
					<div class="statistics_list">
						<span>카카오페이지</span>
						<span>123456</span>
						<span>2020-04-08</span>
					</div>
					<div class="statistics_list">
						<span>리디북스</span>
						<span>123456</span>
						<span>2020-04-08</span>
					</div>
					<div class="statistics_list">
						<span>문피아</span>
						<span>123456</span>
						<span>2020-04-08</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.statistics_date button').click(function(){
				$(this).addClass('date_color').removeClass('date_default');
				$(this).siblings('button').addClass('date_default').removeClass('date_color');
		});
	});
</script>
</html>