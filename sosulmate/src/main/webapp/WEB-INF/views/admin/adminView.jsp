<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/adminsidebar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://kit.fontawesome.com/825f57de13.js" crossorigin="anonymous"></script>
	<title>adminpageview</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<style type="text/css">

.admin_view_wrap{
	width: 100%;
	margin: 0 auto;
}

.admin_view_content_wrap{
	padding-top: 30px;
	width: 100%;
}
.admin_view_detail{
	width: 900px;
	margin : 0 auto 35px auto;
	border : 0px solid black;
}

/*글제목*/
.adminview_title{
	font-size: 30px;
	font-weight: bold;
	padding-bottom: 5px;
}

.admin_content_title{
	
	border-top: 1px solid #9E9E9E;
	background-color: #f6f6f6;
	height: 35px;
	padding : 5px 15px;
}
.title_info{
	display: flex;
}
.title_wrap{
	display: flex;
	
	

}
.title_num{
	padding-right: 15px;
}
.title_nick{
	padding-right: 10px;
}

.title_info_wrap{
	display: flex;
	justify-content: space-between;
	width: 900px;

}

/*본문*/
.admin_content{
	padding : 10px 20px;
}
.admin_content{
	border-bottom: 1px solid #9E9E9E;
}

/*버튼*/
.admin_view_list_btn, .admin_view_delete{
	padding: 7px 20px;	
	border-radius: 6px;
	border: 1px solid #708090;
	background-color: #708090;
	color: white;
	font-size: 13px;
	font-weight: bold;
}
.admin_view_btnwrap{
	display: flex;
	padding-top: 20px; 
	justify-content: space-between;
}
</style>
</head>
<body>
<div class="admin_view_wrap">
	<div class="admin_view_content_wrap">
		<div class="admin_view_detail">
		<div class="admin_title_wrap">
			<div class="adminview_title"><span>자유</span></div>
		</div>

		<div class="admin_content_wrap">
			<div class="admin_content_title">
				
				<div class="title_wrap">
					<div class="title_num"><span>1</span></div>

				<div class="title_info_wrap">	
				<div class="title_subject"><span>소설메이트 망했나요?</span></div>
				<div class="title_info">
					<div class="title_nick"><span>아이디라네</span></div>
					<div class="title_date"><span>2020.00.00</span></div>
				</div>
				</div>
				</div>
				
			</div>

			<div class="admin_content"><span>왜 아무도 없죠??<br><br><br><br><br><br><br><br></span></div>
		</div>

		<div class="admin_view_btnwrap">
			<button class="admin_view_list_btn"><span>목록</span></button>
			<button class="admin_view_delete"><span>삭제</span></button>
		</div>
		</div>
	</div>
</div>
</body>
</html>