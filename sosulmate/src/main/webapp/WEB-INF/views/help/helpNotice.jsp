<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/helpHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>공지사항</title>
	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<link rel="stylesheet" type="text/css" href="../css/help_common.css">
	<script src="https://kit.fontawesome.com/e2a7455480.js" crossorigin="anonymous"></script>
	<style type="text/css">
		/* content */
		.notice_content_title{
			margin-bottom: 10px;
		}
		.notice_content_list > li{
			border-bottom: 1px solid #d1d5d9;
			padding: 15px 7px;
			cursor: pointer;
		}
		.notice_content_list > li:hover{
			color: #e50020;
		}
		.twinkle{
			animation-name: twinkle;
			animation-iteration-count: infinite;
			animation-duration: 4s;
		}
		@keyframes twinkle{
			0% {opacity: 0;}
			100% {opacity: 1;}
		}
		.faq_btnBox{
			display: none;
			justify-content: space-around;
			align-items: center;
			margin: 0 0 20px;
		}
		.middleBtn_white{
			font-weight: bold;
			width: 233px;
			height: 50px;
			text-align: center;
			line-height: 48px;
			cursor: pointer;
		}
		.notice_content_box > h2{
			margin-top: 40px;
			display: none;
		}
		.search_result{
			display: none;
			font-style: italic;
			margin: 0 0 10px;
		}
		
	</style>
</head>
<body>
	<div class="notice_all_wrap">
		<div>header들어갈부분</div>
		<div class="help_common_nav_wrap">
			<ul class="help_common_nav_list">
				<li><a href="#">고객센터</a></li>
				<li><a href="#">공지사항</a></li>
			</ul>
			<form method="" action="">
				<div class="smallSearch">
					<i class="fas fa-search"></i>
					<input type="text" name="" placeholder="검색">
				</div>
			</form>
		</div>
		<div class="help_common_content_wrap">
			<h1>공지사항</h1>
			<div class="search_result">""에 대한 개의 결과</div>
			<div class="faq_btnBox">
				<div class="middleBtn_white"><a href="#">회원가입</a></div>
				<div class="middleBtn_white"><a href="#">활용 도움말</a></div>
				<div class="middleBtn_white"><a href="#">이용문의</a></div>
			</div>
			<div class="notice_content_box notice_join">
				<h2>회원가입</h2>
				<ul class="notice_content_list">
					<li>
						<a href="#">
							[공지] 소설메이트에서 공지합니다.
							<span class="highlight twinkle">New</span>
						</a>
					</li>
					<li><a href="#">[공지] 필요한 기능을 받습니다.	</a></li>
					<li>
						<a href="#">
							[안내] 04월 06일 시스템 점검
							<span class="highlight twinkle">New</span>
						</a>
					</li>
				</ul>
			</div>
			<div class="notice_content_box notice_question">
				<h2>활용 도움말</h2>
				<ul class="notice_content_list">
					<li>
						<a href="#">
							[공지] 소설메이트에서 공지합니다.
							<span class="highlight twinkle">New</span>
						</a>
					</li>
					<li><a href="#">[공지] 필요한 기능을 받습니다.	</a></li>
					<li>
						<a href="#">
							[안내] 04월 06일 시스템 점검
							<span class="highlight twinkle">New</span>
						</a>
					</li>
				</ul>
			</div>
			<div class="notice_content_box notice_need">
				<h2>이용문의</h2>
				<ul class="notice_content_list">
					<li>
						<a href="#">
							[공지] 소설메이트에서 공지합니다.
							<span class="highlight twinkle">New</span>
						</a>
					</li>
					<li><a href="#">[공지] 필요한 기능을 받습니다.	</a></li>
					<li>
						<a href="#">
							[안내] 04월 06일 시스템 점검
							<span class="highlight twinkle">New</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		var type = 'search';
		if(type == 'faq'){
			$('.help_common_nav_list li:nth-child(2) > a').text('FAQ');
			$('.help_common_content_wrap > h1').text('자주 묻는 질문');
			$('.faq_btnBox').css('display','flex');
			$('.notice_content_box > h2').css('display','block');
		}else if(type == 'search'){
			$('.help_common_nav_list li:nth-child(2) > a').text('검색결과');
			$('.help_common_content_wrap > h1').text('검색 결과');
			$('.search_result').css('display','block');
		}
	});
</script>
</html>