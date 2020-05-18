<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>adminpage</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<script src="https://kit.fontawesome.com/e2a7455480.js" crossorigin="anonymous"></script>
	<style type="text/css">
		.adminpage_sidebar{
			float: left;
			width: 200px;
			height: 100vh;
			background-color: #3a3a3a;
		}
		.adminpage_sidebar *{
			color: white;
		}
		/* admin user */
		.adminpage_admin{
			height: 200px;
			display: flex;
		    text-align: center;
		    justify-content: center;
		    flex-direction: column;
		}
		.adminpage_photo{
			border-radius: 10px;
			overflow: hidden;
		}
		/* menu */
		.sidebar_one{
			padding: 12px 20px 16px;
			background-color: #e50020;
			cursor: pointer;
		}
		.sidebar_plus{
			float: right;
		}
		.sidebar_two{
			display: none;
			cursor: pointer;
		}
		.sidebar_details{
			padding: 10px 20px;
			background-color: #535252;
			font-size: 13px;
		}
		.sidebar_details:hover{
			background-color: #656464;
		}
	</style>
</head>
<body>
	<div class="adminpage_wrap">
		<div class="adminpage_sidebar">
			<div class="adminpage_admin">
				<div class="adminpage_photo">
					<img src="../img/icons8-person-80.png">
				</div>
				<div>
					<p>반갑습니다.</p>
					<p><span>관리자1</span>님</p>
				</div>
			</div>
			<div class="adminpage_sidebarMenu">
				<div class="sidebar_one"><a href="#">HOME</a></div>
				<div>
					<div class="sidebar_one"><a href="#">
						회원관리
						<span class="sidebar_plus">+</span>
					</a></div>
					<div></div>
				</div>
				<div>
					<div class="sidebar_one">
						고객센터
						<span class="sidebar_plus">+</span>
					</div>
					<div class="sidebar_two">
						<div class="sidebar_details">공지사항</div>
						<div class="sidebar_details">FAQ</div>
						<div class="sidebar_details">1:1 문의</div>
					</div>
				</div>
				<div>
					<div class="sidebar_one">
						게시물관리
						<span class="sidebar_plus">+</span>
					</div>
					<div class="sidebar_two">
						<div class="sidebar_details">자유</div>
						<div class="sidebar_details">후기</div>
						<div class="sidebar_details">작품공지</div>
						<div class="sidebar_details">작가토크</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		var click = 0;
		$('.sidebar_one').click(function(){
			if(click == 0){
				$(this).find('span').text('-');
				$(this).next('div.sidebar_two').css('display','block');	
				click = 1;
			} else{
				$(this).find('span').text('+');
				$(this).next('div.sidebar_two').css('display','none');	
				click = 0;
			}
		
		});
	});
</script>
</html>