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
		.drop_wrap{
			display: flex;
			justify-content: center;
			width: 1000px;
			margin: 0 auto;
		}
		.drop_content_wrap{
			width: 688px;
		}
		.drop_content_guide{
			padding: 10px;
			background-color: #fafafa;
		}
		.drop_contents_title{
			padding: 5px 0;
			font-size: 18px;
			color: #E50020;
		}
		.drop_contents_content{
			padding-left: 10px;
		}
		.drop_FAQ{
			padding: 3px 0;
			font-size: 16px;
		} 
		.drop_FAQ_content{
			padding-left: 10px;
			font-size: 14px;
		}
		.drop_FAQ_content>div{
			padding: 2px 0;
		}
		.drop_contents_content>label{
			display: inline-block;
			padding: 2px 0;
			font-size: 14px;
		}
		.drop_cause_checkbox{
			display: flex;
			flex-direction: column;
		}
		.drop_description{
			display: block;
			background-color: #fff9f0;
			border: 1px solid #f5e8d4;
			color: #a37a3d;
			font-size: 14px;
			padding: 5px 15px;
			margin: 20px 0;
		}
		.drop_agree{
			display: flex;
			justify-content: center;
		}
		.drop_btn_wrap{
			display: flex;
			justify-content: center;
			margin: 20px 0;
		}
	</style>
</head>
<body>
	<div class="drop_wrap">
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
		<div class="drop_content_wrap">
			<div class="drop_content_guide">
				<div class="drop_contents">
					<div class="drop_contents_title">"회원탈퇴에 앞서 유의사항 및 안내를 반드시 읽고 진행해 주세요!"</div>				
					<div class="drop_contents_content">
						<div class="drop_FAQ">회원 탈퇴에 관련하여 자주 묻는 질문(FAQ)</div>
						<div class="drop_FAQ_content">
							<div>Q: 미진언니는 게임을 잘 하나요?</div>
							<div>A: 아니요</div>
							<div>Q: 미진언니는 터치만 하는 것 아닌가요?</div>
							<div>A: 맞습니다.</div>
						</div>
					</div>
				</div>
				<div class="drop_contents">
					<div class="drop_contents_title">"탈퇴하려는 이유는 무엇인가요?"</div>
					<div class="drop_contents_content drop_cause_checkbox">
						<label><input type="checkbox" name="" value="">미진언니가 마음에 들지않아서</label>
						<label><input type="checkbox" name="" value="">미경이가 정처기를 합격해야해서</label>
						<label><input type="checkbox" name="" value="">정화언니가 잠을 자서</label>
						<label><input type="checkbox" name="" value="">진주가 다이어트를 안해서</label>
					</div>
				</div>
				<div class="drop_contents">
					<div class="drop_contents_title">"본인 확인을 위해 비밀번호를 입력해주세요"</div>
					<div class="drop_contents_content">
						<input type="password" class="smallInput" name="" placeholder="현재 비밀번호">				
					</div>
					<div class="errorMessage">필수 입력사항입니다.</div>
				</div>
			</div>
			<div class="drop_description"><i class="fas fa-exclamation-triangle"></i>&nbsp;탈퇴가 완료된 계정은 다시 복구할 수 없습니다.</div>
			<div class="drop_agree"><label><input type="checkbox" name="">&nbsp;위 내용을 이해했으며, 모두 동의합니다.</label></div>
			<div class="drop_btn_wrap"><button type="button" class="middleBtn_red drop_btn">회원 탈퇴</button></div>
			
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
	});

</script>
</html>