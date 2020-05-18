<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://kit.fontawesome.com/825f57de13.js" crossorigin="anonymous"></script>
	<title>communitylist</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<style type="text/css">

/*전체*/
.sosul_community_wrap{
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
/*게시판 타이틀*/
.sosul_community_header{
	padding-top: 50px;
	padding-bottom: 50px;
    text-align: center;
	width: 100%;
	margin: 0 auto;
	border-bottom : 0px dotted #ececec;
	background: #fbf9f4;
	
}


.community_header_title{
	opacity: 1.0;
	font-size: 30px;
	font-weight: bold;
}
.community_header_explain{

	padding-top: 25px;
	font-size: 15px;
}
.community_header_img{

}
/*검색창*/
.community_search_wrap{
	width: 1000px;
	margin : 0 auto 35px auto;
	display: flex;
	justify-content: flex-end;
	padding-top: 30px;
}

.serch_red_btn > button{
	margin-left: 5px;
	padding: 4px 10px;	
	border-radius: 6px;
	border: 1px solid #E50020;
	background-color: #E50020;
	color: white;
}

.comunity_search_bar{
	height: 30px;
	border: 1px solid #D1D5D9;
	border-radius: 3px;
	width: 200px;
}

input::placeholder{
	color: #d1d5da;
}

/*게시판 list*/
.sosul_community_list_wrap{
	width: 100%;
}
.sosul_community_list_content{
	padding-top: -10px;
	width: 1000px;
	height: auto;
	margin : 0 auto 60px auto;
	border : 0px solid black;
}
.community_list_choice{
	display: flex;
	justify-content: flex-end;
	font-size: 12px;
	padding-right: 20px;

}
.community_list_choice > a {
	padding-left: 5px;
	padding-right: 5px;
}

.sosul_community_content_wrap{
	width: 100%;
	display: flex;
	justify-content: center;
	padding: 10px 0;
}
.sosul_community_content_list{
	width: 950px;
	height: auto;
	border : 0px solid #dfe2e5;
	box-shadow: 5px 5px 5px #dfe2e5;
	padding : 15px 15px 6px;
	
}
.community_title{
	padding-bottom: 35px;
	width: 100%;
	font-size: 17px;
	font-weight: 700;

}

.community_content_info{
	display: flex;
	justify-content: space-between;
}
.community_content_icon{
	font-size: 14px;
}
.community_content_icon > i {
	padding-right: 5px;
}
.community_content_icon > i > span{
	padding-left : 3px;
	font-weight: 400;
}

.community_list_detail_info{
	font-size: 14px;
}
.community_list_nick{
	padding-left: 10px;
}
.community_list_time{
	padding-left: 3px;
}

/*pagenatio*/

.pagenation_wrap{
	width: 100%;
	display: flex;
	justify-content: center;
}
.pagenation {
  padding-top: 40px;
  display: inline-block;
}

.pagenation a {
  color: #666;
  float: left;
  padding: 1px 9px;
  text-decoration: none;
  transition: background-color;
  border: 1px solid #D1D5D9;
  border-radius: 3px;
  margin: 0 4px;
}

.pagenation a.active {
  background-color: #D1D5D9;
  color: #666;
  border: 1px solid #D1D5D9;
}

.pagenation a:hover:not(.active) {
	background-color: #D1D5D9;
}



</style>
</head>
<body>
	<div class="sosul_community_wrap">
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

		<div class="sosul_community_header">
			<div class="community_header_img">
				<img src="../img/chat-1873543_640.png" style="width: 100px; height: 100px;">
			</div>
			
			<div class="community_header_title">
				<span>커뮤니티</span>
			
			<div class="community_header_explain">
				<span>웹소설에 대한 정보를 얻고싶으신가요?<br>사람들과 생각을 공유해보세요.
				</span>
			</div>
			</div>

			
		</div>

		<div class="community_search_wrap">
			<div class="community_search">
				<input type="text" name="" class="comunity_search_bar" placeholder="검색어를 입력해주세요.">
			</div>
			<div class="serch_red_btn"><button>검색</button></div>
		</div>

		<div class="sosul_community_list_wrap">
			<div class="sosul_community_list_content">
				<div class="community_list_choice">
					<a href="">최신순</a>
					<span>|</span>
					<a href="">조회순</a>
					<span>|</span>
					<a href="">공감순</a>
					<span>|</span>
					<a href="">댓글순</a>
				</div>

				<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

					<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

					<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

					<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

					<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

					<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

					<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

					<div class="sosul_community_content_wrap">
					<div class="sosul_community_content_list">
						<a href=""><div class="community_title">이 소설 뭔지 아시는 분?</div></a>

						<div class="community_content_info">
							<div class="community_content_icon">
								<i class="fas fa-eye"><span>00</span></i>
								<i class="fas fa-heart"><span>00</span></i>
								<i class="fas fa-comment-dots"><span>00</span></i>
							</div>
							<div class="community_list_detail_info">
								<span>2020.00.00</span>
								<span class="community_list_time">00:00</span>
								<span class="community_list_nick">닉네임</span>
							</div>

						</div>
					</div>
				</div>

				

				


		

				<div class="pagenation_wrap">
					<div class="pagenation">
						<a href="#">&laquo;</a>
  						<a href="#" class="active">1</a>
  						<a href="#">2</a>
  						<a href="#">3</a>
  						<a href="#">4</a>
  						<a href="#">5</a>
  						<a href="#">6</a>
  						<a href="#">7</a>
  						<a href="#">8</a>
  						<a href="#">9</a>
  						<a href="#">10</a>
 						<a href="#">&raquo;</a>
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