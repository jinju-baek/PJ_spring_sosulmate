<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		.myreview_wrap{
			display: flex;
			justify-content: center;
			width: 1000px;
			margin: 0 auto;
		}
		.myreview_content_wrap{
			width: 688px;
		}
		.myreview_count{
			display: flex;
			justify-content: flex-end;
			font-size: 11px;
		}
		.myreview_onepost{
			border: 1px solid #D1D5D9;
			border-radius: 5px;
			padding: 10px 25px;
			margin: 5px 0;
		}
		.myreview_onepost_info_wrap{
			display: flex;
			justify-content: space-between;
			height: 27px;
			font-size: 13px;
		}

		.myreview_onepost_info{
			display: flex;
		}
		.myreview_onepost_star{
			background: url('${path}/resource/img/star-yellow.png') no-repeat;
			background-size: contain;
			width: 80px;
			height: 18px;
		}
		.myreview_onepost_content{
			padding: 5px 0;
		}
		.myreview_onepost_type{
			font-weight: bold;
		}
		.myreview_onepost_type, .myreview_onepost_date{
			line-height: 26px;
		}
		.myreview_btn_wrap{
			display: flex;
			justify-content: flex-end;
		}
		.myreview_btn{
			margin: 0 5px;
			font-size: 13px;
		}
	</style>
</head>
<body>
	<div class="myreview_wrap">
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

		<div class="myreview_content_wrap">
			<div class="myreview_count">총&nbsp;<strong style="color: red;">1</strong>개의 글을 등록하셨습니다.</div>
			<div class="myreview_onepost">
				<div class="myreview_onepost_info_wrap">
					<div class="myreview_onepost_type">붉은 여우(완전판)</div>
					<div class="myreview_onepost_info">
						<div class="myreview_onepost_date">2020.04.13 10:39</div>&nbsp;&nbsp;
						<div class="actionBtn_grey"><i class="fas fa-thumbs-up"></i>&nbsp;15</div>
					</div>
				</div>
				<div class="myreview_onepost_star"></div>
				<div class="myreview_onepost_content">개재밌어ㅠ</div>
				<div class="myreview_btn_wrap">
					<button type="button" class="smallBtn_grey myreview_btn"><strong>수정</strong></button>
					<button type="button" class="smallBtn_grey myreview_btn"><strong>삭제</strong></button>
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

		$('.')
	});
</script>
</html>