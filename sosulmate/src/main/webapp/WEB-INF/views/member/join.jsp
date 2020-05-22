<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>sosulmate_join</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<style type="text/css">
		a {
			color: inherit;
			text-decoration: none;
		}
		header, section {
			padding : 40px 0px 2px;
		}
		.join_wrap {
			width: 100%;
		}
		.join_content {
			width: 768px;
			margin: 0 auto;
		}
		.join_title {
			padding-top: 30px;
			font-size: 20px;
			text-align: center;
		}
		.header_join_div {
			text-align: center;
			display: block;
			width: 260px;
			height: 130px;
			margin: 0 auto;
		}
		.join_content_wrap {
			width: 330px;
			margin: 0 auto;
		}
		.join_row {
			background-color: white;
			border: 1px solid #D1D5D9;
			padding : 10px 10px 10px 10px;
		}
		.join_box {
			display: block;
			overflow: hidden;
		}
		.input_join {
			width: 300px;
			border-width: 0px;
			height: 28px;
		}
		.btn_join_mail {
			padding-top: 5px;
			padding-bottom: 12px;
		}
		.join_pwpw {
			background-color: white;
			border: 1px solid #D1D5D9;
			padding : 10px 10px 10px 10px;
		}
		.join_pwpw_confirm {
			background-color: white;
			border: 1px solid #D1D5D9;
			border-top: 1px solid white;
			padding : 10px 10px 10px 10px;
		}
		.join_pwbox {
			padding-top: 15px;
		}
		.join_check_content {
			background-color: white;
			height: 160px;
			margin: 15px 0 30px;
		}
		.join_list_content {
			border: 1px solid #D1D5D9;
		}
		.join_check_list {
			margin : 0 10px 0 10px;
			margin-top: 15px;
			text-align: left;
			font-size: 12px;
			margin-bottom: 15px;
			display: flex;
			justify-content: space-between; 
		}
		.btn_double_area {
			display: flex;
		}
		.sosulmate_constract {
			font-size: 10px;
			text-align: right;
		}
		#header_join_div a img {
			width: 550px;
			margin : -110px;
		}
	</style>
</head>
<body>
	<form>
		<div class="join_wrap">
			<div class="join_content">
				<header>
					<div id="header_join_div" style="text-align: center;">
						<a href="#"><img alt= "로고이미지" src="${path}/resources/img/로고.png"></a>
					</div>
					<div class="join_title">이메일로 회원가입</div>
				</header>
				<section>
					<div class="join_content_wrap">

						<div class="join_row">
							<span class="join_box">
								<input type="text" id="id" name="id" placeholder="이메일" class="input_join">
							</span>
						</div>
						<span class="errorMessage">필수 정보입니다.</span>

						<div class="btn_join_mail">
							<button class="largeBtn_grey" type="button" style="width: 330px;">인증메일 발송</button>
						</div>
						
						<div class="join_textbox">
							<div class="join_row">
								<span class="join_box">
									<input type="text" class="input_join" placeholder="닉네임">
								</span>
							</div>
							<div><span class="errorMessage">필수 정보입니다.</span></div>
								
							<div class="join_pwbox">	
								<div class="join_pwpw">
									<span class="join_box">
										<input type="password" class="input_join" placeholder="비밀번호">
									</span>
								</div>

								<div class="join_pwpw_confirm">
									<span class="join_box">
										<input type="password" class="input_join" placeholder="비밀번호 재확인">
									</span>
								</div>
								<span class="errorMessage">필수 정보입니다.</span>
								</div>

							<div class="join_check_content">
								<div class="join_list_content">
									<div class="join_check_list">
										<div><input type="checkbox" >전체동의</div>
										<div><a href="#" class="sosulmate_constract">약관보기></a></div>
									</div>
									<div class="join_check_list">
										<div><input type="checkbox">sosulmate 이용약관</div>
										<div><a href="#" class="sosulmate_constract">약관보기></a></div>
									</div>
									<div class="join_check_list">
										<div><input type="checkbox">개인 정보 처리 방침 동의</div>
										<div><a href="#" class="sosulmate_constract">약관보기></a></div>
									</div>
									<div class="join_check_list">
										<div><input type="checkbox">개인 정보 제 3자 제공 및 위탁 동의</div>
										<div><a href="#" class="sosulmate_constract">약관보기></a></div> 
									</div>
								</div>
							</div>
						
							<div class="btn_double_area">	
								<div>
									<button class="middleBtn_white" type="button" style="width: 152px;">취소</button>
								</div>
								<div style="padding-left: 28px;">
									<button class="middleBtn_red" type="button" style="width: 152px;">회원가입</button>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>

	</form>

</body>
</html>