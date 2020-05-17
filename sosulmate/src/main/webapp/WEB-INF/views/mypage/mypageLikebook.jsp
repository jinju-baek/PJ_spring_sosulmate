<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		/* menu */
		.mypage_menu_wrap{
			display: inline-block;
		}
		.mypage_home{
			text-align: center;
			font-weight: bold;
		}
		.mypage_home a{
			padding: 10px;
		}
		.mypage_menu_wrap{
			margin-right: 50px;
		}
		.mypage_menu_wrap div{
			padding: 5px 5px 5px 10px;
		}
		.mypage_menu_wrap>div{
			border-bottom: 2px solid #D1D5D9;
		}
		.mypage_menu_wrap>div>div>div{
			padding-left: 13px;
		}
		.mypage_home{
			font-size: 25px;
		}
		.mypage_info_header{
			font-weight: bold;
		}
		.mypage_library_header{
			font-weight: bold;
		}
		.mypage_info_wrap div{
			font-size: 15px;
		}
		.mypage_library_wrap div{
			font-size: 15px;
		}

		/*content*/
		.likebook_wrap{
			display: flex;
			justify-content: center;
			width: 1000px;
			margin: 0 auto;
		}
		.likebook_content_wrap{
			width: 688px;	
		}
		.likebook_content_menu{
			display: flex;
			
		}
		.likebook_content_menu>a>li{
			border-top: 1px solid #9E9E9E;
			border-right: 1px solid #9E9E9E;
			border-bottom: 1px solid #333333;
			color: #333333;
			padding: 10px 31px;
			font-weight: bold;
		}
		.likebook_content_menu>a:first-child>li{
			border-left: 1px solid #9E9E9E;
		}
		.onebook_thumbnail{
			display: inline-block;
			width: 70px;
			height: 105px;
			background: url('${path}/resources/img/xxlarge.jpg') no-repeat;
			background-size: contain;
		}
		.likebook_content{
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
			background-color: #fafafa;
			padding: 15px 0 15px 15px;
			margin: 15px 0; 
		}
		.likebook_onebook{
			display: flex;
			align-items: center;
			margin-right: 15px;
			margin-bottom: 5px;
			border-bottom: 1px solid #D1D5D9;
		}
		.onebook_info{
			width: 195px;
			padding: 0 10px;
		}
		.onebook_title{
			font-weight: bold;
			font-size: 13px;
		}
		.onebook_count_info{
			display: flex;
		}
		.onebook_writer, .onebook_count{
			color: #9E9E9E;
		}
		.onebook_writer, .onebook_count_info>div{
			font-size: 10px;
		}
		.onebook_count_end{
			border: 1px solid #D1D5D9;
			border-radius: 5px;
			background-color: #D1D5D9;
			color: white;
			padding: 0 3px; 
			height: 18px;
		}
		.onebook_viewbtn{
			font-size: 11px;
			padding: 3px;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<div class="likebook_wrap">
		<div class="mypage_menu_wrap">
			<div>
				<div class="mypage_home">마이페이지</div>
				<div class="mypage_info_header mypage_menu_select"><i class="fas fa-home"></i><a href="#">&nbsp;&nbsp;홈</a></div>
			</div>

			<div class="mypage_info_wrap ">
				<div class="mypage_info_header"><i class="fas fa-user-friends"></i>&nbsp;&nbsp;내 정보</div>
				<div>
					<div class="mypage_info_revice mypage_menu_select"><a href="#">정보 변경</a></div>
					<div class="mypage_info_drop mypage_menu_select"><a href="#">회원 탈퇴</a></div>
				</div>
			</div>
			<div class="mypage_library_wrap">
				<div class="mypage_library_header"><i class="fas fa-book-open"></i>&nbsp;&nbsp;내 서재</div>
				<div>
					<div class="mypage_write mypage_menu_select"><a href="#">내가 쓴 글</a></div>
					<div class="mypage_review mypage_menu_select"><a href="#">리뷰 관리</a></div>
					<div class="mypage_favor mypage_menu_select"><a href="#">선호작</a></div>
				</div>
			</div>
		</div>

		<div class="likebook_content_wrap">
			<ul class="likebook_content_menu">
				<a href="#"><li>전체</li></a>
				<a href="#"><li>로맨스</li></a>
				<a href="#"><li>로판</li></a>
				<a href="#"><li>BL</li></a>
				<a href="#"><li>판타지</li></a>
				<a href="#"><li>무협</li></a>
				<a href="#"><li>라노벨</li></a>
			</ul>
			<div class="likebook_content">
				<div class="likebook_onebook">
					<div class="onebook_thumbnail"></div>
					<div class="onebook_info">
						<div class="onebook_title">막내 황녀님</div>
						<div class="onebook_writer">사하</div>
						<div class="onebook_count_info">
							<div class="onebook_count">총 9화</div>&nbsp;
							<div class="onebook_count_end">완결</div>
						</div>
					</div>
					<div class="onebook_viewbtnwrap">
						<button type="button" class="smallBtn_red onebook_viewbtn">상세보기</button> 
					</div>
				</div>
				<div class="likebook_onebook">
					<div class="onebook_thumbnail"></div>
					<div class="onebook_info">
						<div class="onebook_title">막내 황녀님</div>
						<div class="onebook_writer">사하</div>
						<div class="onebook_count_info">
							<div class="onebook_count">총 9화</div>&nbsp;
							<div class="onebook_count_end">완결</div>
						</div>
					</div>
					<div class="onebook_viewbtnwrap">
						<button type="button" class="smallBtn_red onebook_viewbtn">상세보기</button> 
					</div>
				</div>
				<div class="likebook_onebook">
					<div class="onebook_thumbnail"></div>
					<div class="onebook_info">
						<div class="onebook_title">막내 황녀님</div>
						<div class="onebook_writer">사하</div>
						<div class="onebook_count_info">
							<div class="onebook_count">총 9화</div>&nbsp;
							<div class="onebook_count_end">완결</div>
						</div>
					</div>
					<div class="onebook_viewbtnwrap">
						<button type="button" class="smallBtn_red onebook_viewbtn">상세보기</button> 
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		/* 마이페이지 메뉴 선택시 굵기 변경 */
		$('.mypage_menu_select').click(function(){
			$('.mypage_menu_select:eq(1)').css('font-weight', 'normal');
			$('.mypage_menu_select:eq(2)').css('font-weight', 'normal');
			$('.mypage_menu_select:eq(3)').css('font-weight', 'normal');
			$('.mypage_menu_select:eq(4)').css('font-weight', 'normal');
			$('.mypage_menu_select:eq(5)').css('font-weight', 'normal');
			$(this).css('font-weight', 'bold');
		});

		$('.likebook_content_menu>a>li').click(function(){
			$('.likebook_content_menu>a>li').css('background-color', 'white')
										 .css('color', '#3A3A3A');
			$(this).css('background-color', '#3A3A3A')
				   .css('color', 'white');
		});
	});
</script>
</html>