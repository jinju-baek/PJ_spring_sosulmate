<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>문의내역</title>
	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<link rel="stylesheet" type="text/css" href="../css/help_common.css">
	<script src="https://kit.fontawesome.com/e2a7455480.js" crossorigin="anonymous"></script>
	<style type="text/css">
		.help_common_content_wrap > h1{
			text-align: inherit;
		}
		.help_common_content_wrap{
			width: 1120px;
		}
		/* searchBox */
		.largeSearch{
			width: 76%;
		}
		.largeSearch > input{
			width: 100%;
		}
		.answerList_searchBox{
			display: flex;
			justify-content: flex-start;
		    margin: 5px auto 60px;
		    float: right;
		}
		#answerList_select{
			padding: 8px 10px 9px 15px;
			margin-left: 10px;
    		border: 1px solid #d1d5d9;
    		border-radius: 3px;
    		width: 100px;
    		-webkit-appearance: none;
    		outline: none;
		}
		.answerList_searchBox > i{
			float: right;
			right: 20px;
    		top: 9px;
    		color: #00000099;
    		position: relative;
		}

		/* list box */
		.answerList_check{
			font-size: 13px;
			min-width: 66px;
			padding: 3px 10px;
			border-radius: 5px;
			display: inline-block;
			text-align: center;
		}
		.check_default{
			background-color: #9e9e9e;
			color: #fff;
		}
		.check_point{
			background-color: #e50020;
			color: #fff;
		}
		.answerList_list{
			display: flex;
			justify-content: space-between;
			align-items: center;
			border-bottom: 1px solid #d1d5d9;
			width: 1120px;
		}
		.answerList_list > div{
			padding: 20px 20px;
			color: #656464;
			font-size: 15px;
		}
		.list_main > div{
			font-weight: bold;
			cursor: default; 
		}
		.list_title{
			width: 76%;
			text-align: left;
			cursor: pointer;
		}
		.list_title:hover{
			color: #e50020;
		}
		.list_main_title:hover{
			color: #656464;
		}
		.list_date{
			width: 157px;
			text-align: center;
		}
		.list_state{
			width: 108px;
			text-align: center;
		}

		/* request */
		.list_two{
			display: none;
		}
		.answerList_request{
			margin: 20px 0 20px 0;
			padding: 10px;
			color: #656464;
			font-size: 15px;
			background-color: #f9f9f9;
			min-height: 265px;
			border-radius: 5px;
		}
		.request_content_wrap{
			display: flex;
			justify-content: space-between;
		}
		.request_contentBox{
			flex: 0 0 65%;
			max-width: 65%;
		}
		.request_content_title{
			padding-left: 20px;
		}
		.request_content{
			padding: 20px 20px;
		}
		.request_admin{
			border-top: 1px solid #d1d5d9;
		}
		.request_admin > div:last-child{
			padding-top: 20px;
		}
		.request_sidebar{
			flex: 0 0 auto;
			padding: 0 20px;
			background-color: #d1d5d9;
			width: 27%;
			height: 245px;
    		border-radius: 6px;
    		font-size: 13px;
		}
		.request_details{
			border-bottom: 1px solid #333333;
			padding-bottom: 20px;
		}
		.request_details:last-child{
			border: none;
		}
		.request_details > div{
			margin-top: 20px;
		}
		.request_details > div > span:first-child{
			width: 32%;
    		display: inline-block;
		}
		.details_detail{
			color: #333333;
		}
		.request_fontStyle{
			color: #9e9e9e;
			font-size: 13px;
		}

		.answerList_line{
			border-bottom: 1px solid #d1d5d9;
		}
	</style>
</head>
<body>
	<div class="answerList_all_wrap">
		<div class="help_common_nav_wrap">
			<ul class="help_common_nav_list">
				<li><a href="#">고객센터</a></li>
				<li><a href="#">문의내역</a></li>
			</ul>
		</div>
		<div class="help_common_content_wrap">
			<form method="" action="">
				<div class="answerList_searchBox">
					<div class="largeSearch">
						<i class="fas fa-search"></i>
						<input type="text" name="" placeholder="검색">
					</div>
					<select id="answerList_select">
						<option>모든 상태</option>
						<option>접수완료</option>
						<option>처리중</option>
						<option>답변완료</option>
					</select>
					<i class="fas fa-sort-down"></i>
				</div>
			</form>
			<h1>문의내역</h1>
			
			<div class="answerList_list_wrap">
				<div class="answerList_list list_main"> 
					<div class="list_title list_main_title">제목</div>
					<div class="list_regdate">등록일</div>
					<div class="list_state">상태</div>
				</div>
				<ul>
					<li>
						<div class="answerList_list list_one">
							<div class="list_title">이용문의 또 드립니다 <br>왜 처리를 이렇게 늦게하시는 거죵? <br>빨리빨리좀 해주세요</div>
							<div class="list_date">2020년 14월 29일</div>
							<div class="list_state">
								<span class="answerList_check check_default">처리중</span>
							</div>
						</div>
						<div class="list_two">
							<div class="answerList_request">
								<h2 class="request_title"></h2>
								<div class="request_content_wrap">
									<div class="request_contentBox">
										<div class="request_content_title request_fontStyle">내용</div>
										<div class="request_content">
											<div>우아 보고싶다 완성된거</div>
										</div>
										<div class="request_content request_admin">
											<div class="request_writer">관리자</div>
											<div class="request_date request_fontStyle">2020년 4월 21일</div>
											<div>안녕<br><br>오늘이야<br><br><br>반가워<br><br>감사해</div>
										</div>
										
									</div>
									<div class="request_sidebar">
										<div class="request_details">
											<div>
												<span>요청자</span>
												<span class="details_detail">asd1234</span>	
											</div>
											<div>
												<span>등록일</span>
												<span class="details_detail">2020년 00월 00일 00:00</span>
											</div>
										</div>
										<div class="request_details">
											<div>
												<span>상태</span>
												<span class="answerList_check check_default">처리중</span>	
											</div>
											<div>
												<span>연락수단</span>
												<span class="details_detail">이메일</span>
											</div>
											<div>
												<span>연락처</span>
												<span class="details_detail">&nbsp;--&nbsp;</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="answerList_line"></div>
						</div>
					</li>
					<li>
						<div class="answerList_list list_one">
							<div class="list_title">이용문의 드립니다</div>
							<div class="list_regdate">2020년 4월 20일</div>
							<div class="list_state">
								<span class="answerList_check check_point">답변완료</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
		
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		var click = 1;
		
		$('.list_one').click(function(){
			if(click == 1){
				$(this).next().css('display','block');
				click = 0;
			} else{
				$(this).next().css('display','none');	
				click = 1;
			}
		});	
	});
</script>
</html>