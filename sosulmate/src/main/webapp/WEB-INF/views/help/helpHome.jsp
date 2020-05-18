<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/helpHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>고객센터</title>
	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<link rel="stylesheet" type="text/css" href="../css/help_common.css">
	<script src="https://kit.fontawesome.com/e2a7455480.js" crossorigin="anonymous"></script>
	<style type="text/css">
		ul{list-style: none;}
		/* top부분 */
		.help_top_wrap{
			/*padding: 62px 20px 0;*/
			margin-bottom: 10px;
			background-color: #e50020;
		}
		.help_top_search{
			position: relative;
			max-width: 610px;
			margin: 0 auto;
		}
		.help_search_text{
			width: 100%;
			font-size: 28px;
			color: #fff;
			margin: 0;
			padding: 24px 0 34px;
			text-shadow: 0 1px 2px rgba(0,0,0,0.3);
			text-align: center;
			cursor: default;
		}
		.largeSearch{
			padding-bottom: 20px;
		}
		/* content */
		.help_content_box{
			padding-top: 35px;
		}
		.help_contentBox_btn{
			font-weight: bold;
			width: 100%;
			line-height: 48px;
			cursor: pointer;
		}
		.help_contentBox_list > li{
			border-bottom: 1px solid #d1d5d9;
			font-size: 16px;
			padding: 15px 7px;
			cursor: pointer;
		}
		.help_contentBox_list > li:hover{
			color: #e50020;
		}
		.help_contentBox_list > li:first-child{
			padding: 25px 7px 15px;
		}
		.answer_btn{
			background-color: #e50020;
			color: #fff;
		}
		.largeSearch > input{
			border: none;
		}

	</style>
</head>
<body>
	<div class="help_all_wrap">
		<div class="help_top_wrap">
			<div>header들어갈부분</div>
			<div class="help_top_search">
				<div class="help_search_text">
					궁금한 점이 있다면 <br> 무엇이든 물어보세요
				</div>
				<form method="" action="">
					<div class="largeSearch">
						<i class="fas fa-search"></i>
						<input type="text" name="" placeholder="검색">
					</div>
				</form>
			</div>
		</div>
		<div class="help_common_content_wrap">
			<div class="help_content_box">
				<div class="help_contentBox_btn largeBtn_white">공지사항</div>
				<ul class="help_contentBox_list">
					<li>[공지] 소설메이트에서 공지합니다.</li>
					<li>[안내] 04월 06일 시스템 점검</li>
					<li>[공지] 소설메이트에서 공지합니다.</li>
				</ul>		
			</div>
			<div class="help_content_box">
				<div class="help_contentBox_btn largeBtn_white">자주 묻는 질문</div>
				<ul class="help_contentBox_list">
					<li>랭킹은 어떻게 보면 되나요?</li>
					<li>선호작을 등록하고 싶어요.</li>
					<li>작가로 등록하고 싶습니다.</li>
				</ul>				
			</div>
			<div class="help_content_box">
				<div class="help_contentBox_btn answer_btn largeBtn_red">1 : 1 문의하기</div>
			</div>
		</div>
	</div>
</body>
</html>