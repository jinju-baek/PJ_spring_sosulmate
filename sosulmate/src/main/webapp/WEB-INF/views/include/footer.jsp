<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>sosulmate_footer</title>
	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<style type="text/css">
		a {
			color: inherit;
			text-decoration: none;
		}
		li { list-style: none; float: left; font-size: 14px;}
		.footer_content_wrap {
			width: 100%;
			background-color: #3A3A3A;
		}
		.footer_content {
			width: 1100px;
			margin: 0 auto;
			display: flex;
			padding-top: 60px;
		}
		.footer_right {
			color : #E0E0E0;
			padding-left: 320px;	
		}
		.footer_right ul {
			display : flex;
		}
		.footer_one li {
			margin-right: 14px;
		}
		.header_footer_div {
			position: absolute;
		}
		.footer_two li {
			margin-right: 14px;
			display: inline-block;
		}
		.footer_three {
			display: inline-block;
			padding-top: 35px;
			font-size: 12px;
			color: #656464;
		}
		.footer_four {
			padding-bottom: 30px;
			font-size: 12px;
			color: #656464;
		}
		.question {
			color: #E0E0E0;
		}
		.privacy {
			font-size: 17px;
			color: #EFDC05;
		}
		li:not(.privacy) {
			padding-top: 3px;
		}
		.header_footer_div a img {
			width: 440px;
			margin: -130px -75px;
		}
	</style>
</head>
<body>
	<div class="footer_content_wrap">
		<div class="footer_content">
			<div class="header_footer_div">
				<a href="#"><img alt="로고이미지" src="../img/로고.png"></a>
			</div>
			<div class="footer_right">
				<ul class="footer_one">
					<li>
						<a href="#">회사소개</a>
					</li>
					<li>
						<a href="#">사업자정보확인</a>
					</li>
					<li>
						<a href="#">이용약관</a>
					</li>
					<li class="privacy">
						<a href="#">개인정보처리방침</a>
					</li>
					<li>
						<a href="#">고객지원/공지사항</a>
					</li>
				</ul>
				<ul class="footer_two">
					<li>
						<a href="#">블로그</a>
					</li>
					<li>
						<a href="#">페이스북</a>
					</li>
					<li>
						<a href="#">트위터</a>
					</li>
				</ul>
				<p class="footer_three">
					사업자 등록번호 111-11-11111 | 주소 서울특별시 강남구 모모구 여훈대로 170 170,yeohun-daero,  momo-gu, Seoul, Korea
				</p>
				<p class="footer_four">
					대표번호 02-1111-1111 | 팩스번호 02-111-1111 | 
					<i class="question">고객문의 help@sosulmate.com | 업무 제휴 문의 contact@sosulmate.com</i>
				</p>

		</div>
	</div>
</div>
</body>
</html>