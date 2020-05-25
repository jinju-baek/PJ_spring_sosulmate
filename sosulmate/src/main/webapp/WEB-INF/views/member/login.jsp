<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>sosulmate_login</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<style type="text/css">
		/*div { border: 1px solid red; }*/
		a {
			color: inherit;
			text-decoration: none;
		}
		body {
			background-color : #F5F6F7;
		}
		header {
			padding : 62px 0px 20px;
			text-align: center;
		}
		section {
			padding : 20px 0px 20px;
			text-align: center;
		}
		.login_wrap {
			width: 100%;
		}
		.login_content {
			width: 768px;
			margin: 0 auto;
			padding-top: 35px;
		}
		.header_login_div {
			display: block;
			width: 260px;
			height: 130px;
			margin: 0 auto;
		}
		.login_logo {
			width: 250px;
    		height: 70px;
    	}
		.login_content_wrap {
			width: 330px;
			margin: 0 auto;
		}
		.div_login_input {
			background-color: white;
			border: 1px solid #D1D5D9;
			height: 45px;
			padding : 10px 35px 10px 15px;
		}
		.div_login_input_pw {
			background-color: white;
			border: 1px solid #D1D5D9;
			border-top: 1px solid white;
			height: 45px;
			padding : 10px 35px 10px 15px;
		}
		.login_box {
			display:block;
			overflow: hidden;
		}
		.input_login {
			width: 270px;
			border-width: 0px;
			height: 28px;
		}
		.login_member {
			background-color: #D1D5D9;
			height: 45px;
			margin-bottom: 1px;
			display: flex;
		}
		.login_check {
			text-align: left;
			display: flex;
			padding-left: 10px;
			align-items: center;
		}
		.member_search {
			display: flex;
			align-items: center;
			padding-left: 61px;
			text-align: right;
			font-size: 12px;
		}
		.btn_login {
			margin: 30px 0 5px 0px;
		}
	</style>
</head>
<body>
	<form>
		<div class="login_wrap">
			<div class="login_content">
				<header>
					<div id="header_login_div">
						<a href="#"><img class="login_logo" src="${path}/resources/img/로고.png"></a>
					</div>
				</header>
				<section>
					<div class="login_content_wrap">
						<div class="div_login_input" id="sosulmate_id">
							<span class="login_box">
								<input type="text" class="input_login" placeholder="아이디">
							</span>
						</div>
						<div class="div_login_input_pw" id="sosulmate_pw">
							<span class="login_box">
								<input type="password" class="input_login" placeholder="비밀번호">
							</span>
						</div>
						<div class="login_member">
							<div class="login_check">
								<input type="checkbox">
								<label for="loginck" class="label" style="font-size: 12px;">
								로그인 상태 유지
								</label>
							</div>
							<div class="member_search">
								<a href="#">아이디 찾기</a> &nbsp<span class="si"> | </span>&nbsp;
								<a href="#">비밀번호 찾기</a> &nbsp
							</div>	
						</div>
						<div>
							<button type="button" class="largeBtn_red btn_login" style="width: 330px;">로그인</button>
							<button type="button" class="largeBtn_white" style="width: 330px;">회원가입</button>
						
						</div>
					</div>
				</section>
			</div>
		</div>
	</form>
</body>
</html>