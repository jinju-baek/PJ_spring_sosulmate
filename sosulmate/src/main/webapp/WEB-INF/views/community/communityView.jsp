<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://kit.fontawesome.com/825f57de13.js" crossorigin="anonymous"></script>
	<title>community-view</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<style type="text/css">

.community_view_wrap{	
	width: 100%;
	margin: 0 auto;
}

/*상단바*/
.ranking_menu_wrap{
	width: 100%;
}

.ranking_menu_genre_wrap{
	position: relative;
	height: 52px;
	
	border-bottom : 1px solid #656464;
	display: flex;
	line-height: 48px;
}

.ranking_menu_plat_contain{
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
}
.ranking_menu_plat_contain > ul {
	list-style: none;
	padding : 0;
	margin : 0;
	position: relative;
}
.ranking_menu_plat_contain > ul > li {
	position: relative;
	border : 0;
	display: inline-block;
	float: none;
	padding: 0 2px;
	transition: all .3s ease;


}
.ranking_menu_plat_contain > ul > li > a {
	border-radius: 50px;
	position: relative;
	padding : 6px 16px;
	font-size: 13px;
	line-height: 12px;
	color: #565656;
	font-weight: 500;
	border : 2px solid transparent;

}

.ranking_menu_plat_contain > ul > li:hover>a {
	border-width: 2px;
	border-style: solid;
	border-color : #E50020;
	color : #E50020;
}

/*본문*/
.community_content_wrap{
	padding-top: 30px;
	width: 100%;
	
}
.community_content_detail{
	width: 688px;
	margin : 0 auto 35px auto;
	border : 0px solid black;
}
.community_title_wrap{
	display: flex;
	justify-content: space-between;
	border-bottom: 2px solid #656464;
}
.community_title {
	padding-bottom: 5px;
}
.community_nick{
	margin-top: 6px;
}
.community_title span{
	padding-left: 10px;
	font-size: 20px;
}
.community_nick span{
	font-size: 14px;
	padding-right: 10px;
}

/*내용부*/
.community_content_detail_wrap{
	width: 100%;
	border-bottom: 1px solid #D1D5D9;
}
.community_detail_content{
	padding : 15px 20px;
}

.community_content{
	overflow: auto;
}

.community_detail_icon{
	display: flex;
	justify-content: space-between;
	align-items: flex-end;
}
.community_icon{
	font-size: 14px;
}
.community_icon > i {
	padding-right: 5px;
}
.community_icon > i > span{
	padding-left : 3px;
	font-weight: 400;
}
.community_content{
	padding-bottom: 20px;
	height : 500px;
}
.community_view_date{
	padding-left: 5px;
}
.community_view_bar{
	padding : 0 0 0 5px;
}
.community_view_btn button:first-child{
	margin-right : 10px;
}
.community_view_warn{
	border : none;
	background: none;
}

/*댓글*/
.community_reply_info{
	padding-top: 3px;
	padding-left: 3px;
}
.community_reply_title{
	font-size: 20px;
	font-weight: bold;
}
.community_reply_num{
	font-size: 20px;
	color: #E50020;
	font-weight: bold;
}

.community_reply_input{
	border : 1px solid #D1D5D9;
	border-radius: 5px;
	height: 40px;
	overflow: auto;
	display: flex;
	justify-content: center;
	margin-top : 15px;
	margin-bottom: 10px;
}
.community_reply_input > textarea {
	margin-top : 10px;
	width: 640px;
	border : none;
	overflow: auto;
	resize: none;
}
.reply_input_btn{
	background: none;
	border : none;
	font-weight: bold;
}

/*댓글view*/
.reply_content_wrap{
	border-bottom : 1px solid #D1D5D9;
	width: 100%
}
.reply_content_view{
	padding : 5px 0 8px 8px;
}
.reply_nick{
	font-weight: bold;
	font-size: 14px;
	padding-bottom: 5px;
}
.reply_content{
	font-size: 14px;
	padding-bottom: 5px;
}
.reply_info_wrap{
	padding-top: 5px;
	display: flex;
	align-items: center;
	padding-bottom: 5px;

}
.reply_info_wrap > div {
	padding-right: 8px;
}
.reply_re_btn{
	padding : 0 1px;
	border : none;
	background: none;
	font-size: 13px;
}
.reply_re_del_or_warn{
	background: none;
	padding : 0 1px;
	border : none;
	font-size: 13px;
}
.reply_time{
	font-size: 13px;

}
.reply_time > span {
	font-size: 13px;
	padding-right: 5px;
}
.reply_heart{
	font-size: 13px;
}
.reply_heart > i {
padding-right: 3px;	
color: #E50020;
}
.reply_refresh_wrap{
	width: 100%;
	display : flex;
	justify-content: center;
	padding-top: 5px;
}
.reply_refresh_btn{
	border : none;
	background : none;
}
.reply_refresh_btn > i {
	padding-right: 3px;
}

</style>
</head>
<body>
	<div class="community_view_wrap">
		<div class="ranking_menu_wrap">
			<div class="topmenu_wrap">
				<div class="topmenu_Bar">
					<div class="topmenu_contain">
						<ul>
							<li>
								<a href="#">자유</a>
							</li>
							<li>
								<a href="#">후기</a>
							</li>
							<li>
								<a href="#">작품공지</a>
							</li>
							<li>
								<a href="#">작가토크</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>


		<div class="community_content_wrap">
			<div class="community_content_detail">
				<div class="community_title_wrap">
					<div class="community_title"><span>이 소설 뭔지 아시는분?</span></div>
					<div class="community_nick"><span>닉네임</span></div>
				</div>

				<div class="community_content_detail_wrap">
					<div class="community_detail_content">
						<div class="community_content"> 
							황제가 바람펴서 황후 배신때리고 정부를 들임<br>
						</div>
						<div class="community_detail_icon">
							<div class="community_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>

								<span class="community_view_date">2020.00.00</span>
								<span class="community_view_time">00:00</span>
								<span class="community_view_bar">|</span>
								<span><button class="community_view_warn">신고</button></span>
							</div>
							<div class="community_view_btn">
								<button class="smallBtn_white">수정</button>
								<button class="smallBtn_white">삭제</button>
							</div>
						</div>
					</div>
				</div>

				<div class="community_reply_wrap">
					<div class="community_reply_content">
						<div class="community_reply_info">
							<span class="community_reply_title">댓글</span>
							<span class="community_reply_num">2</span>
						</div>

						<div class="community_reply_input_wrap">
							<div class="community_reply_input">
								<textarea placeholder="댓글을 남겨보세요."></textarea>
								<button class="reply_input_btn">등록</button>
							</div>

							<div class="reply_content_wrap">
								<div class="reply_content_view">
									<div class="reply_nick">닉네임</div>
									<div class="reply_content">아 그거 앎 ㅇㅇ 재혼황후임</div>
									<div class="reply_info_wrap">
										<div class="reply_time">
											<span>1초</span>전
										</div>
										<div class="reply_reco">
											<span class="reply_heart"><i class="fas fa-heart"></i> 0</span>
										</div>
										<div class="reply_reply_btn">
											<button class="reply_re_btn">답글 달기</button>
										</div>
										<div class="reply_del_or_warn">
											<button class="reply_re_del_or_warn">신고</button>
										</div>
									</div>
								</div>

									<div class="reply_content_view">
									<div class="reply_nick">닉네임</div>
									<div class="reply_content">아 그거 앎 ㅇㅇ 재혼황후임<br>두줄이면어떨까</div>
									<div class="reply_info_wrap">
										<div class="reply_time">
											<span>1초</span>전
										</div>
										<div class="reply_reco">
											<span class="reply_heart"><i class="fas fa-heart"></i> 0</span>
										</div>
										<div class="reply_reply_btn">
											<button class="reply_re_btn">답글 달기</button>
										</div>
										<div class="reply_del_or_warn">
											<button class="reply_re_del_or_warn">신고</button>
										</div>
									</div>
								</div>

							</div>

							<div class="reply_refresh_wrap">
								<div class="reply_refresh">
									<button class="reply_refresh_btn"><i class="fas fa-redo-alt"></i>새로운 댓글 확인하기</button>
								</div>
							</div>





						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
		$(function(){
		$('.topmenu_contain a').click(function(){
			$('.topmenu_contain a').css('color', '#2F3138')
											 .css('border', '2px solid white');
			$(this).css('color', '#E50020')
					.css('border', '2px solid #E50020');
		});
	});	
</script>
</html>