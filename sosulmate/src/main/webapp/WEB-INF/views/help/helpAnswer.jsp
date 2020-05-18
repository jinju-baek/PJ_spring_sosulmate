<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/helpHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>일대일문의</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/help_common.css">
	<script src="https://kit.fontawesome.com/e2a7455480.js" crossorigin="anonymous"></script>
	<style type="text/css">
		.help_common_content_wrap > h1{
			text-align: inherit;
		}
		.answer_inputBox{
			padding-bottom: 14px;
		}
		.answer_info{
			padding-bottom: 7px;
		}
		textarea, .dragdrop{
			padding: 10px 10px 10px 15px;	
			border-radius: 3px;
			width: 610px;
		}
		textarea{
			border: 1px solid #d1d5d9;
			min-height: 120px;
			resize: vertical;
		}
		.dragdrop{
			cursor: pointer;
			text-align: center;
			color: #656464;
			font-size: 14px;
			height: 70px;
			line-height: 44px;
			border: 1px dashed #d1d5d9;
		}
		.answer_btnBox{
			margin-top: 15px;
		}
		.answer_btnBox > button{
			width: 300px;
			height: 45px;
		}
		.answer_btn{
			margin-left: 10px;
		}
		.info_msg{
			font-size: 13px;
			color: #3a3a3a;
		}
		#answer_select{
			padding: 8px 10px 9px 15px;
			margin-bottom: 1px;
    		border: 1px solid #d1d5d9;
    		border-radius: 3px;
    		width: 610px;
    		-webkit-appearance: none;
    		outline: none;
		}
		.answer_selectBox > i{
			float: right;
			right: 174px;
    		top: 7px;
    		color: #00000099;
    		position: relative;
		}
		.text_info{
			display: none;
		}
	</style>
</head>
<body>
	<div class="answer_all_wrap">
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
			<h1>문의하기</h1>
			<form method="" action="">
				<div class="answer_inputBox">
					<div class="answer_info">이메일<span class="highlight">*</span></div>
					<input type="" name="" class="largeInput">
					<div class="errorMessage">필수 정보입니다.</div>
				</div>
				<div class="answer_inputBox">
					<div class="answer_info">제목<span class="highlight">*</span></div>
					<input type="" name="" class="largeInput">
					<div class="errorMessage">필수 정보입니다.</div>
				</div>
				<div class="answer_inputBox">
					<div class="answer_info">상세 설명<span class="highlight">*</span></div>
					<textarea></textarea>
					<div class="errorMessage">필수 정보입니다.</div>
				</div>
				<div class="answer_inputBox">
					<div class="answer_info">연락 수단<span class="highlight">*</span></div>
					<div class="answer_selectBox">
						<select id="answer_select">
							<option value="email">이메일</option>
							<option value="text">문자</option>
						</select>
						<i class="fas fa-sort-down"></i>
					</div>
					<div class="info_msg">안내 받으실 방법을 선택해 주세요.</div>
					<div class="errorMessage">필수 정보입니다.</div>
				</div>
				<div class="answer_inputBox text_info">
					<div class="answer_info">연락처<span class="highlight">*</span></div>
					<input type="" name="" class="largeInput">
					<div class="errorMessage">필수 정보입니다.</div>
				</div>
				<div class="answer_inputBox">
					<div class="answer_info">첨부파일</div>
					<div class="dragdrop">
						<div class="">
							<p>파일을 여기로 드래그</p>
						</div>
						<ul class="mailbox-attachments clearfix uploadedList"></ul>
					</div>
				</div>
				<div class="answer_btnBox">
					<button class="middleBtn_white cancle_btn">취소</button>
					<button type="button" class="middleBtn_red answer_btn">제출</button>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#answer_select').change(function(){
			var info = $(this).val().trim();
			console.log(info);
			if(info == 'text'){
				$('.text_info').css('display','block');
			} else{
				$('.text_info').css('display','none');
			}
		});
	});
	/* input에 focus되면 css 변경 */
	$(document).on('focus','.answer_inputBox',function(){
		$(this).children('.largeInput').css('border','1px solid #E50020');
		$(this).children('textarea').css('border','1px solid #E50020');
		$(this).children('.answer_select').children('select').css('border','1px solid #E50020');
	});
	/*$(document).on($('#selmail').change(function(){)*/
</script>
</html>