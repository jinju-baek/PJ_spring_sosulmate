<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>help_header</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<style type="text/css">
		#help_header_wrap{
			position: relative;
			display: block;
			width: 100%;
			padding: 0;
			top: 0;
			left: 0;
			height: 62px;
			background-color: #e50020;
		}
		.help_header_nav{
			display: flex;
			justify-content: space-between;
			align-items: center;
			width: 1120px;
			height: 100%;
			margin: 0 auto;
		}
		.help_header_navTitle{
			vertical-align: middle;
		}
		.help_header_navTitle > a{
			border: 0;
			text-decoration: none;
			color: #fff;
			display: inline-block;
			font-size: 18px;
			line-height: 1;
			width: auto;
		}
		.help_header_titleLogo{
			position: relative;
			padding-right: 12px;
			margin-right: 10px;
		}
		.help_header_titleLogo::after{
			content: '';
			display: inline-block;
			position: absolute;
			right: 0;
			top: 1px;
			width: 1px;
			height: 17px;
			background-color: #fff;
		}
		.smallBtn_red{
			border: 2px solid white;
			padding: 6px 14px;
		}
		.smallBtn_white, .smallBtn_white:hover{
			border: 2px solid #e50020;
		}
		.navBtn_request{
			background-color: #fff;
			margin-left: 6px;
		}
		.smallBtn_red:hover{
			background-color: transparent;
			border-color: #ffdbe0;
			color:#ffdbe0;
		}
		.smallBtn_white:hover{
			background-color: #ffdbe0;
    		/* border-color: #ffdbe0; */
    		color: #e50020;
		}

	</style>
</head>
<body>
	<header id="help_header_wrap">
		<div class="help_header_nav">
			<div class="help_header_navTitle">
				<a href="#" class="help_header_titleLogo">sosulmate</a>
				<a href="#">고객센터</a>
			</div>
			<div class="help_header_navBtnBox">
				<a href="#" class="smallBtn_red">문의내역</a>
				<a href="#" class="smallBtn_white">문의하기</a>
			</div>
		</div>
	</header>
</body>
</html>