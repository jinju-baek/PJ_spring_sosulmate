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
		.mypage_home_wrap{
			display: flex;
			justify-content: center;
			width: 1000px;
			margin: 0 auto;
		} 
		.mypage_content_wrap{
			width: 688px;
		}
		.mypage_member_info{
			border: 1px solid #D1D5D9;
			border-radius: 5px;
			padding: 10px 20px;
		}
		.mypage_member_info div{
			font-weight: bold;
		}
		.mypage_info_id{
			padding-bottom: 5px;
			border-bottom: 2px solid #D1D5D9;
			font-weight: bold;
			font-size: 20px;
		}
		.mypage_info_content{
			display: flex;
			justify-content: center;
			padding-top: 10px;
		}
		.mypage_info_cur_wrap{
			margin-left: 35px;
			margin-top: 17px;
		}
		.mypage_info_cur{
			display: flex;
			justify-content: space-between;
		}
		.mypage_info_cur_count{
			line-height: 20px;
		}
		.mypage_info_level_wrap{
			display: flex;
			flex-direction: column;
		}
		.mypage_info_fill_wrap{
			overflow: hidden;
			position: relative;
			border: none;
			border-radius: 50%;
			background-color: #ffecb3;
			width: 100px;
			height: 100px;
		}
		.mypage_info_fill{
			position: absolute;
			bottom: 0px;
			border: none;
			background-color: #FFD966;
			width: 100px;
			height: 0px;
			text-align: center;
		}
		
		.mypage_info_level{
			padding-left: 25px; 
		}
		.mypage_cur_write, .mypage_cur_review{
			font-size: 15px;
		}
		.mypage_info_level, .mypage_nextlevel{
			font-size: 18px;
		}
		.mypage_nextlevel{
			padding-top: 10px;
		}
	</style>
</head>
<body>
	<div class="mypage_home_wrap">
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

		<div class="mypage_content_wrap">
			<div class="mypage_member_info">
				<div class="mypage_info_id">징구(pjj0647)</div>
				<div class="mypage_info_content">
					<div class="mypage_info_level_wrap">
						<div class="mypage_info_fill_wrap"><div class="mypage_info_fill">85%</div></div>
						<div class="mypage_info_level">Lv. 30</div>
					</div>
					<div class="mypage_info_cur_wrap">
						<div class="mypage_info_cur">
							<div class="mypage_cur_write"><i class="fas fa-pen"></i>&nbsp;작성한 글</div>
							<div class="mypage_cur_count">5</div>
						</div>
						<div class="mypage_info_cur">
							<div class="mypage_cur_review"><i class="fas fa-comment-dots"></i>&nbsp;작성한 리뷰</div>
							<div class="mypage_cur_count">20</div>
						</div>
						<div class="mypage_nextlevel">다음 레벨까지 <strong style="color: red;">10 리뷰</strong> 남았습니다.</div>
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

		/* 마이페이지 리뷰 퍼센트만큼 채우기 */
		var heightVal=$('.mypage_info_fill').text();
		$('.mypage_info_fill').animate({height:heightVal}, 1000);
	});

</script>
</html>