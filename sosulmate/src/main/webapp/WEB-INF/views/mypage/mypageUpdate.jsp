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

		/* content */
		.update_wrap{
			display: flex;
			justify-content: center;
			width: 1000px;
			margin: 0 auto;
		}
		.update_content_wrap{
			width: 688px;
		}
		.line1, .line4{
			border-top: 1px solid #D1D5D9;
			border-bottom: 1px solid #D1D5D9;
		}
		.line2, .line3{
			border-bottom: 1px solid #D1D5D9;
		}
		.update_content_table{
			border-collapse: collapse;
			font-size: 13px;
		}
		.update_content_table tr, .update_content_table td{
			padding: 8px 13px;
		}
		.update_table_title{
			font-weight: bold;
			text-align: end;
			vertical-align: top;
			width: 143px;
			background-color: #E0E0E0;
		}
		.update_table_content{
			width: 545px;
		}
		.update_nickname{
			display: flex;
		}
		.update_nickname input{
			margin-left: 10px;
		}
		.update_password{
			display: block;
		}
		.update_password_wrap{
			padding-bottom: 5px;
		}
		.update_errorMessage{
			padding: 3px 0 0 10px;
			color: red;
			font-size: 11px;
		}
		.update_password_info_wrap{
			padding: 5px 0;
		}
		.update_password_info_wrap div{
			padding: 3px 0;
			font-size: 11px;
		}
		.update_password_info_title{
			font-weight: bold;
			padding: 2px;
		}
		.update_password_input{
			padding: 5px 0;
		}
		.update_btn{
			padding: 5px;
			border: 1px solid #7D8E9E;
			border-radius: 5px;
			background-color: #7D8E9E;
			color: white;
			font-weight: bold;
			font-size: 10px;
		}
		.update_keyword_type_wrap{
			display: flex;
		}
		.update_keyword ul{
			border: 1px solid #D1D5D9;
			margin: 0 5px 5px 0;
			width: 121px;
			height: 200px;
			overflow: auto;
		}
		.update_keyword ul li{
			padding: 5px 10px;
			cursor: pointer;
		}
		.update_keyword ul li:hover{
			background-color: #E0E0E0;
		}
		.keyword_favortype{
			display: none;
		}
		.keyword_favortype_first{
			display: inline-block;
		}
		.keyword_select_wrap{
			cursor: pointer;
		}
	</style>
</head>
<body>
	<div class="update_wrap">
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
		<div class="update_content_wrap">
			<table class="update_content_table">
				<tr class="line1">
					<td class="update_table_title">닉네임</td>
					<td class="update_nickname update_table_content">
						<div>징구</div>&nbsp;&nbsp;
						<button type="button" class="update_nickname_btn update_btn" name="">중복 체크</button>
					</td>
				</tr>
				<tr class="line2">
					<td class="update_table_title">이메일</td>
					<td class="update_email update_table_content">sosulmate@sosul.com</td>
				</tr>
				<tr class="line3">
					<td class="update_table_title">비밀번호 변경</td>
					<td class="update_password update_table_content">
						<div class="update_password_wrap">
							<input type="password" class="smallInput" name="" placeholder="현재 비밀번호">
							<div class="errorMessage">필수 입력사항입니다.</div>
						</div>
						<div class="update_password_wrap">
							<input type="password" class="smallInput" name="" placeholder="새 비밀번호">
							<div class="errorMessage">필수 입력사항입니다.</div>
						</div>
						<div class="update_password_wrap">
							<input type="password" class="smallInput" name="" placeholder="새 비밀번호 확인">
							<div class="errorMessage">필수 입력사항입니다.</div>
						</div>
						<div class="update_password_info_wrap">
							<div class="update_password_info_title">비밀번호 변경 시 유의사항</div>
							<div class="update_password_info_content">&nbsp;&nbsp;- 8자 이상, 영문/숫자/특수문자 중 2가지 이상 입력해주세요.</div>
							<div class="update_password_info_content">&nbsp;&nbsp;- 연속된 3자 이상의 같은 문자는 제한합니다.</div>
							<div class="update_password_info_content">&nbsp;&nbsp;- ID와 같은 비밀번호는 사용할 수 없습니다.</div>
						</div>
						<div class="update_password_input">
							<button type="button" class="update_password_btn update_btn" name="">비밀번호 변경</button>
						</div>
					</td>
				</tr>
				<tr class="line4">
					<td class="update_table_title">키워드 설정</td>
					<td class="update_keyword update_table_content">
						<div class="update_keyword_type_wrap">
							<ul class="keyword_type">
								<li data-type="1">로맨스</li>
								<li data-type="2">로맨스판타지</li>
								<li data-type="3">BL</li>
								<li data-type="4">판타지</li>
								<li data-type="5">무협</li>
								<li data-type="6">라이트노벨</li>
							</ul>
							<ul class="keyword_favortype keyword_favortype_first">
								<li data-favortype="1">로맨스1</li>
								<li data-favortype="2">로맨스2</li>
								<li data-favortype="3">로맨스3</li>
								<li data-favortype="4">로맨스4</li>
								<li data-favortype="5">로맨스5</li>
								<li data-favortype="6">로맨스6</li>
								<li data-favortype="7">로맨스7</li>
								<li data-favortype="8">로맨스8</li>
								<li data-favortype="9">로맨스9</li>
								<li data-favortype="10">로맨스10</li>
							</ul>
							<ul class="keyword_favortype">
								<li data-favortype="1">로맨스판타지1</li>
								<li data-favortype="2">로맨스판타지2</li>
								<li data-favortype="3">로맨스판타지3</li>
								<li data-favortype="4">로맨스판타지4</li>
								<li data-favortype="5">로맨스판타지5</li>
								<li data-favortype="6">로맨스판타지6</li>
								<li data-favortype="7">로맨스판타지7</li>
								<li data-favortype="8">로맨스판타지8</li>
								<li data-favortype="9">로맨스판타지9</li>
								<li data-favortype="10">로맨스판타지10</li>
							</ul>
							<ul class="keyword_favortype">
								<li data-favortype="1">BL1</li>
								<li data-favortype="2">BL2</li>
								<li data-favortype="3">BL3</li>
								<li data-favortype="4">BL4</li>
								<li data-favortype="5">BL5</li>
								<li data-favortype="6">BL6</li>
								<li data-favortype="7">BL7</li>
								<li data-favortype="8">BL8</li>
								<li data-favortype="9">BL9</li>
								<li data-favortype="10">BL10</li>
							</ul>
							<ul class="keyword_favortype">
								<li data-favortype="1">판타지1</li>
								<li data-favortype="2">판타지2</li>
								<li data-favortype="3">판타지3</li>
								<li data-favortype="4">판타지4</li>
								<li data-favortype="5">판타지5</li>
								<li data-favortype="6">판타지6</li>
								<li data-favortype="7">판타지7</li>
								<li data-favortype="8">판타지8</li>
								<li data-favortype="9">판타지9</li>
								<li data-favortype="10">판타지10</li>
							</ul>
							<ul class="keyword_favortype">
								<li data-favortype="1">무협1</li>
								<li data-favortype="2">무협2</li>
								<li data-favortype="3">무협3</li>
								<li data-favortype="4">무협4</li>
								<li data-favortype="5">무협5</li>
								<li data-favortype="6">무협6</li>
								<li data-favortype="7">무협7</li>
								<li data-favortype="8">무협8</li>
								<li data-favortype="9">무협9</li>
								<li data-favortype="10">무협10</li>
							</ul>
							<ul class="keyword_favortype">
								<li data-favortype="1">라이트노벨1</li>
								<li data-favortype="2">라이트노벨2</li>
								<li data-favortype="3">라이트노벨3</li>
								<li data-favortype="4">라이트노벨4</li>
								<li data-favortype="5">라이트노벨5</li>
								<li data-favortype="6">라이트노벨6</li>
								<li data-favortype="7">라이트노벨7</li>
								<li data-favortype="8">라이트노벨8</li>
								<li data-favortype="9">라이트노벨9</li>
								<li data-favortype="10">라이트노벨10</li>
							</ul>
						</div>
						<div class="keyword_select_wrap">
							
						</div>
						<div class="update_password_input"><button type="button" class="update_keyword_btn update_btn" name="">키워드 설정</button></div>
					</td>
				</tr>
			</table>
			
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
		
		/* 키워드분류 선택시*/
		$('.keyword_type li').click(function(){
			var index = $(this).attr('data-type');
			$('.keyword_favortype').css('display', 'none');
			$('.keyword_favortype:eq(' + (index - 1) + ')').css('display', 'inline-block');
		});

		/* 키워드 선택시 */
		var array = new Array();
		$('.keyword_favortype li').click(function(){
			var keyword = $(this).text();

			if($.inArray(keyword, array) == -1){
				array.push(keyword);
				var favortype = '<div class="update_keyword_favortype actionBtn_red" data-cancel="' + array.length +'">#' + keyword + '&nbsp;<i class="fas fa-times"></i></div>';
				$('.keyword_select_wrap').after(favortype);
			}			
		});
	});

	$(document).on('click', '.update_keyword_favortype', function(){
		$(this).remove();
	});
</script>
</html>