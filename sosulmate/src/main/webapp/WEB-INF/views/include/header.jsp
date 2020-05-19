<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>sosulmate header</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<script src="https://kit.fontawesome.com/83b564820d.js" crossorigin="anonymous"></script>
	<style type="text/css">
		div, span {
			margin: 0;
			padding: 0;
			border: 0;
			vertical-align: baseline;
			outline: 0;
		}
		.header_wrap {
			width: 100%;
			background-color: white;
			box-shadow: 0 0 1px 1px rgba(20,23,28,.1),0 3px 1px 0 rgba(20,23,28,.1);
			z-index: 999;
		}
		.header_content {
			width: 1000px;
			margin: 0 auto;
			height: 62px;
			box-sizing: border-box;
			display: flex;
			justify-content: space-between;
			align-items: center;

		}
		.header_content_wrap {
			display: flex;
			align-items: center;
			justify-content: space-between;
			width: 210px;
		}
		.header_content_menu > a {
			font-size: 20px;
			position: relative;
			font-weight: 530;
		}
		.header_content_search {
			border: 1px solid #E0E0E0;
			border-radius: 10px;
		}
		.header_content_search_input {
			background-color: transparent;
			border-color: transparent;
			font-size: 13px;
			width: 220px;
			height: 30px;
			border-radius: 2px;
			outline: none; 

		}
		.header_content_search_btn {
			background-color: transparent;
			border-color: transparent;
			width: 44px;
			height: 30px;
			cursor: pointer;
			color:  #9E9E9E;
			border-top-right-radius: 2px;
			border-bottom-right-radius: 2px;
		}
		.btn_button_wrap {
			display: flex;
		}
		.btn_button_wrap > div {
			padding-right: 15px;
		}
		/*top버튼=============================*/
		.top_btn {
			bottom: 115px;
			background-color: #E50020;
			display: none;
		}
		.fix_btn {
			position: fixed;
			right: 50px;
			color: white;
			width: 60px;
			height: 60px;
			border-radius: 50%;
			display: flex;
			justify-content: center;
			align-items: center;
			font-size: 30px;
			cursor: pointer;
			box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,.19);
		}
		.fix_btn > i {
			transition: transform .3s;
		}
		.fix_btn:hover > i {
			transform: scale(1.3);
		}
		.bell_main {
    		padding-right: 17px;
    		padding: 0 5px;
    		border: 1px solid #3a3a3a;
    		border-radius: 32px;
   			font-size: 20px;
   			margin-right: 17px;
		}
		.far {
			color: #3a3a3a;
		}
		.header_content_logo_img {
			width: 355px;
			margin: -97px -142px;
		}

/*		.help_search_input input {
		    border: 1px solid #fff;
		    border-radius: 6px;
		    color: #888;
		    font-size: 15px;
		    height: 40px;
		    padding-left: 40px;
		    padding-right: 20px;
		    width: 120px;
		    outline: none;
		}
		.help_search_input > i {
		    position: absolute;
		    left: 14px;
		    top: 14px;
		    color: #656464;
		}	*/


	</style>
</head>
<body>
	<div class="top_btn fix_btn"><i class="fas fa-arrow-up"></i></div>
	<div class="header_wrap">
		<div class="header_content">
			<div class="header_content_logo">
				<a href="#">
					<img class="header_content_logo_img" alt="로고이미지" src="${path}/resources/img/로고.png">	
				</a>
			</div>
			<div class="header_content_wrap">
				<div class="header_content_menu"><a href="#">홈</a></div>
				<div class="header_content_menu"><a href="#">랭킹</a></div>
				<div class="header_content_menu"><a href="#">커뮤니티</a></div>
			</div>

			<div class="smallSearch">
					<i class="fas fa-search"></i>
   					<input type="text" name="" placeholder="검색">
			</div>
			<div class="btn_button_wrap">
				<a href="#" class="bell_main"><i class="far fa-bell"></i></a>
				<div><button type="button" class="btn_button_login smallBtn_white">로그인</button></div>
				<div><button type="button" class="btn_button_join smallBtn_red">회원가입</button></div>
			</div>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// Scroll Top버튼 생성 및 top으로 이동
		$(window).scroll(function() { // 스크롤이 움직이면
			//alert('움직임');
			if(document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
				$('.top_btn').fadeIn().css("display","flex");
			} else {
				$('.top_btn').fadeOut();
			}
		});

		$('.top_btn').click(function(){
			$('html, body').animate({ scrollTop: 0 }, 800);
		})
	});
</script>
</html>