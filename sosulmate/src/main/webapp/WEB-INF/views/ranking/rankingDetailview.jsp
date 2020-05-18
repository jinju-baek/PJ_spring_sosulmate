<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://kit.fontawesome.com/825f57de13.js" crossorigin="anonymous"></script>
	<title>ranking-detailview</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<style type="text/css">
a{
	text-decoration: none;
	color : inherit;
}
section {
	display: block;
}
article{
	display: block;
}
/*전체*/
.sosul_detail_view_wrap{
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
.sosul_view_content{
	width: 100%;
	position: relative;
	overflow-x: hidden;
	overflow-y: hidden;
	min-height: 500px;
}
.sosul_page_detail{
	width: 1000px;
	margin : 0 auto 60px auto;
	border-top : none;
}
.page_detail_wrap{
	display: table;
	width: 1000px;
}
.sosul_detail_body_wrap{
	width: 1000px;
	display: table-cell;
	vertical-align: top;
}
.sosul_detail_body{
	width: 1000px;
	height: 100%;
	padding-bottom: 95px;
	border : 0px solid red;
}
.sosul_detail_header{
	padding : 40px 29px;
}

/*info 부분*/
.sosul_header_info_wrap{

	height: 100%;
	width: 700px;
	float : right;
	border : 0px solid black;
}

/*이미지부분*/
.sosul_thumbnail_wrap{
	width: 220px;
	float : left;
	border-bottom : 1px solid #656464;

}
.detail_thumbnail_wrap{
	width: 200px;

}
.sosul_detail_img{
	display: inline-block;
	position: relative;
	height: auto;
}
.thumbnail_detail_img{
	box-sizing: border-box;
	display: block;
	width: 220px;
	height: 296px;
	position: relative;

	background: url('../img/resource.jpg') no-repeat;
	background-size: cover;

	border: 1px solid #D1D5D9;
	left : 0;
	top : 0;
	z-index: 3;
}

/*이미지아래 하트*/
.detail_sosul_good{
	margin-top : 12px;
	width: 200px;
	text-align: center;
}
.sosul_good_btn{
	width: 130px;
	padding-bottom: 5px;
	margin : 0;
	outline: 0;
	text-decoration : none;
	box-sizing: border-box;
	border : 0px solid white;
	font-weight: 700;
	display: inline-block;
	text-align: center;
	cursor: pointer;
	line-height: 1em;
	vertical-align: baseline;
	background-color: white;

}
.good_heart_icon{
	width: 30px;
	height: 30px;
	vertical-align: -60%;
	display: inline-block;
	text-indent: -444px;
	font-size: 0;
	overflow: hidden;
	

	background-size: 100% 100%;
}
.good_heart_cnttext{
	font-size: 16px;
	color: #666;
	padding-left: 3px;
	font-weight: 600;

}

/*연재사이트*/
.sosul_detail_palce_wrap{
	position: relative;
	display: flex;
	padding-top : 5px;

}
.sosul_detail_palce{
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
}
.sosul_detail_palce > ul {
	list-style: none;
	padding : 0;
	margin : 0;
	position: relative;
}
.sosul_detail_palce > ul > li {
	position: relative;
	border : 0;
	display: inline-block;
	float: none;
	
	transition: all .3s ease;


}
.sosul_detail_palce > ul > li > a {
	border-radius: 50px;
	position: relative;
	display: flex;
	padding : 4px 8px;
	font-size: 10px;
	line-height: 12px;
	color: #666;
	font-weight: 500;
	border : 1px solid #666;
	
}
/*공유하기*/
.sosul_detail_palce_wrap{
	width: 100%;
	height: 40px;

}
.sosul_share_sns{
	display: flex;
	position: relative;
	justify-content: center;
	padding-bottom: 10px;
	padding-top : 10px;
}
.sosul_share_sns > a{
	
	padding-right: 10px;
}
.sosul_share_sns > a > img{
	width: 30px;
	height : 30px;
}

/*info부분*/

.sosul_info_wrap, .sosul_detail_review_title_wrap{
border-bottom: 2px solid #656464;
display: flex;
position: relative;

}

.sosul_info_title_wrap{

padding-left: 10px;
width: 100%;
font-size: 25px;
color: #333;
font-weight: 700;
word-break: keep-all;
word-wrap: break-word;
margin-top: 12px;
}


.sosul_info_genre, .sosul_info_bar, .sosul_info_writer{
	font-size: 12px;
	color: #666
	font-weight : 400;
}
.sosul_info_bold{
	font-size: 12px;
	color: #656464
	font-weight : 700;

}
.sosul_info_detail_wrap{
	width: 100%;
}

.sosul_info_detail{
	padding : 15px 10px 60px;
}
.sosul_info_detail > span {
	font-size: 15px;
}
.sosul_info_btn{
	margin-right : 3px;
	padding-top: 5px;
	margin-top: 15px;
	height: 30px;
	border: 1px solid #E50020;
	border-radius: 3px;
	color: #E50020;
	font-size : 12px;
	width : 50px;
	text-align: center;
}


/*댓글타이틀*/
.detail_review_title{
padding-left: 10px;
width: 100%;
font-size: 20px;
color: #333;
font-weight: 700;
word-break: keep-all;
word-wrap: break-word;
margin-top: 12px;

}
/*별점*/
.sosul_detail_star_wrap{
	padding-top: 15px;
	display: flex;
	padding-left: 15px;

}
.sosul_detail_star_title, .sosul_detail_star_num{
	text-align: center;
}
.sosul_detail_star_title{
	font-size: 12px;
}
.sosul_detail_star_num{
	font-size: 25px;
	font-weight: 700;
}
.sosul_detail_img_num{
	width: 110px;
}

.starR1{
	background: url('../img/ico_review.png') no-repeat -120px 0;
	background-size: auto 100%;
	width: 35px;
	height: 70px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;

}
.starR2{
	background: url('../img/ico_review.png') no-repeat right 0;
	background-size: auto 100%;
	width: 35px;
	height: 70px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
	margin-right: 20px;

}
.starR1.on{
	background-position: 0 0;
}
.starR2.on{
	background-position: -35px 0;
}
.starRev_wrap{
	padding-left: 65px;
}

.star-rating{
	width: 110px;
}
.star-rating, .star-rating span {
	display: inline-block;
	height: 20px;
	overflow: hidden;
	background: url('../img/star.png') no-repeat;

}
.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}

/*댓글입력창*/
.sosul_detail_textarea{
padding-top: 10px;
}

.sosul_detail_textarea > textarea {
	padding : 10px;
	align-items: center;
	width: 670px;
	height: 100px;
	outline-width: 0px;
	margin-left: 20px;
}

.sosul_detail_checkbox{
	display: flex;
	align-items: center;
	font-size: 14px;
	padding-top : 3px;
	float: right;
}
.sosul_detail_checkbox > span {
	padding-right: 5px;
}


/*댓글리스트*/
.sosul_comment_list_wrap{
	padding-top: 60px;
	width: 100%;

}

.sosul_comment_title{
	padding-right: 5px;
	float: right;
}
.sosul_comment_title>a{
	font-size: 13px;
}

.sosul_comment_info{
	font-size: 13px;
}
.sosul_comment_content_wrap{
	padding-left: 15px;
	border-top: 1px solid #656464;
	
	margin-top: 29px;
	padding-top: 10px;
}
.sosul_comment_content_nick{
	padding-right: 10px;
	padding-top: 5px;
	display: flex;
	justify-content: space-between;
}
.sosul_comment_star{
	width: 95px;
	height : 17px;
}
.star-rating-comm{
	width: 95px;
}
.star-rating-comm, .star-rating-comm span {
	display: inline-block;
	height: 17px;
	overflow: hidden;
	background: url('../img/star-comm.png') no-repeat;

}
.star-rating-comm span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}

.sosul_com_nick{
	font-size:14px;
	font-weight: 700;
}
.sosul_com_lv{
	font-size: 12px;
	padding-left: 3px;
}
.sosul_comment_content{
	padding-top: 8px;
}
.sosul_comment_content_info{
	padding-top: 10px;
	padding-bottom: 5px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}
.sosul_comment_content_info > div {
	padding-right: 5px;
}
.sosul_comment_more{
	padding : 10px 0;
	margin-top: 10px;
	text-align: center;
	width: 100%;
	border : 1px solid #D1D5D9;
	border-radius: 3px;
}
.fa-caret-down{
	padding-left : 5px;
}
.sosul_comment_content_c{
border-bottom: 1px solid #D1D5D9;
}

/*댓글스포일러*/
.alert_article{
	background : #f2f4f5;
	border-radius: 3px;
	padding : 27px 0;
	text-align: center;
	display: block;
}
.alert_description{
	color: #808991;
	line-height: 1.5em;
}
.alert_icon{
	text-indent: -444px;
	font-size: 0;
	overflow: hidden;
	background: url(../img/icons8-high-risk-50.png)center center no-repeat;
	background-size: 100% 100%;
	display: inline-block;
	width: 15px;
	height: 15px;
	vertical-align: -6%;
	margin-right : 2px;

}
.alert_detail_link{
	border : 0;
	box-shadow: none;
	outline : 0;
	text-decoration: none;
	display: inline-block;
	background : 0 0;
	color: #808991;
	line-height: 1.5em;
	font-weight: 700;
}
.alert_detail_link:after{
	content: '';
	width: 7px;
	height: 10px;
	margin-left: 4px;
	display: inline-block;
	text-indent: -444px;
	font-size: 0;
	overflow: hidden;
	background: url(../img/icons8-double-right-50.png) center center no-repeat;
	background-size:  100% 100%;

}
.spoiler_alert+.comment_content{
	display: none;
}

/*bookmark*/
.sosul_detail_bookmark{
	display: flex;
	margin-top: -2px;
}
.sosul_detail_bookmark button{
	border : none;
	background : none;
	margin-top: -2px;
}




</style>
</head>
<body>
	<div class="sosul_detail_view_wrap">
		<div class="ranking_menu_wrap">
			<div class="topmenu_wrap">
				<div class="topmenu_Bar">
					<div class="topmenu_contain">
						<ul>
							<li>
								<a href="#">전체</a>
							</li>
							<li>
								<a href="#">로맨스</a>
							</li>
							<li>
								<a href="#">로맨스판타지</a>
							</li>
							<li>
								<a href="#">BL</a>
							</li>
							<li>
								<a href="#">판타지</a>
							</li>
							<li>
								<a href="#">무협</a>
							</li>
							<li>
								<a href="#">라이트노벨</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="sosul_detail_view_contentwrap">
			<div class="sosul_view_content">
				<div>
					<div class="sosul_page_detail">
						<div class="page_detail_wrap">
							<div class="sosul_detail_body_wrap">
								<section class="sosul_detail_body">
									
									<div class="sosul_detail_bookmark">
										<button onclick="changeimg()">
											<img src="../img/icons8-bookmark-nocolor.png" id="img1">
										</button>
									</div>
									
									<article class="sosul_detail_header">

										<div class="sosul_header_info_wrap">
											<div class="sosul_info_wrap">
												<div class="sosul_info_title_wrap">
													<span class="sosul_info_title">제목입니다요~</span>
													<span class="sosul_info_genre">로맨스판타지</span>
													<span class="sosul_info_bar">|</span>
													<span class="sosul_info_writer">작가임다</span>
													<span class="sosul_info_bold">저</span>
												</div>

													<div class="sosul_info_btn">
														<span>연재중</span>
											    	</div>
												
											</div>

											<div class="sosul_info_detail_wrap">
												<div class="sosul_info_detail">
													<span>완벽한 황후였다. 
															그가 원하는 건 배우자이지 동료가 아니라 한다. 황제는 나비에를 버리고 노예 출신의 여자를 옆에 두었다. 그래도 괜찮았다. 황제가 그녀에게 다음 황후 자리를 약속하는 걸 듣기 전까진. 나비에는 고민 끝에 결심했다. 그렇다면 난 옆 나라의 황제와 재혼하겠다고.</span></div>
											</div>

											<div class="sosul_detail_review_wrap">
												<div class="sosul_detail_review_title_wrap">
													<div class="detail_review_title">
														<span>리뷰</span>
														<span>(10)</span>
													</div>
												</div>

												<div class="sosul_detail_star_wrap">
													<div class="sosul_detail_star_infowrap">
														<div class="sosul_detail_star_title">
															<strong>별점</strong>(20명)
														</div>
														<div class="sosul_detail_star_num">5.0</div>
														<div class="wrap-star">
															<div class="star-rating">
																<span style="width:80%"></span>
															</div>
														</div>
													</div>
													
													<div class="starRev_wrap">
														<div class="starRev">
															<span class="starR1">별1_왼</span>
															<span class="starR2">별1_오</span>
															<span class="starR1">별2_왼</span>
															<span class="starR2">별2_오</span>
															<span class="starR1">별3_왼</span>
															<span class="starR2">별3_오</span>
															<span class="starR1">별4_왼</span>
															<span class="starR2">별4_오</span>
															<span class="starR1">별5_왼</span>
															<span class="starR2">별5_오</span>
														</div>
													</div>
												</div>

												<div class="sosul_detail_textarea_wrap">
												<div class="sosul_detail_textarea">
													<textarea style="resize: none;" placeholder="리뷰를 남겨주세요!"></textarea>
												</div>

												<div class="sosul_detail_checkbox">
													<input type="checkbox" name="">
													<span>스포일러 표시</span>
													<button class="smallBtn_red">글쓰기</button>
												</div>
												</div>

												<div class="sosul_comment_list_wrap">
													<div class="sosul_comment_list_title">
														<div class="sosul_comment_title">
															<a href="">최신순</a>
															<span>|</span>
															<a href="">공감순</a>
														</div>
													</div>

													<div class="sosul_comment_content_wrap">
														<div class="sosul_comment_content_c">
															<div class="sosul_comment_content_nick">
																<div class="sosul_comment_nick">
																	<span class="sosul_com_nick">닉네임</span>
																	<span class="sosul_com_lv">Lv.30</span>
																</div>
																<div class="sosul_comment_star">
																	<div class="star-rating-comm">
																		<span style="width:10%"></span>
																	</div>					
																</div>
															</div>
															<div class="sosul_comment_content">
																<p class="comment_content">오늘 점심은 버거킹~ 머쉬룸 와퍼 주니어 세트 존맛존맛<br>복수하겠다....<br>ㅂㄷㅂㄷㅂㄷ</p>
															</div>
															<div class="sosul_comment_content_info">
																<div class="sosul_comment_info">2020.00.00</div>
																<div><a href="" class="actionBtn_grey"><i class="far fa-thumbs-up"></i> 00</a></div>
																<div><a href="" class="actionBtn_grey">신고</a></div>
															</div>
														</div>

														<div class="sosul_comment_content_c">
															<div class="sosul_comment_content_nick">
																<div class="sosul_comment_nick">
																	<span class="sosul_com_nick">닉네임</span>
																	<span class="sosul_com_lv">Lv.30</span>
																</div>
																<div class="sosul_comment_star">
																	<div class="star-rating-comm">
																		<span style="width:50%"></span>
																	</div>					
																</div>
															</div>
															<div class="sosul_comment_content">
																<div class="spoiler_alert">
																	<article class="alert_article">
																		<p class="alert_description">
																			<span class="alert_icon"></span>
																			스포일러가 있는 리뷰입니다. <br>
																			<button class="alert_detail_link" type="button">리뷰보기</button>
																		</p>
																	</article>
																</div>
																<p class="comment_content">낄낄낄... 이게 스프링에서도 구동할까.. 낄낄...<br>ㅇㅅㅇ....<br>집에 갈거야~</p>
															</div>
															<div class="sosul_comment_content_info">
																<div class="sosul_comment_info">2020.00.00</div>
																<div><a href="" class="actionBtn_grey"><i class="far fa-thumbs-up"></i> 00</a></div>
																<div><a href="" class="actionBtn_grey">신고</a></div>
															</div>
														</div>
													</div>


													<div class="sosul_comment_more">
														<a href=""><span class="sosul_comment_more_txt">10개 더보기<i class="fas fa-caret-down"></i></span></a>
													</div>
												</div>
											</div>
										</div>
										

										<div class="sosul_thumbnail_wrap"> 
											<div class="detail_thumbnail">
												<div class="detail_thumbnail_wrap">
													<div class="sosul_detail_img">
														<div class="thumbnail_detail_img">
														</div>
													</div>
												</div>
											</div>
											<div class="detail_sosul_good">
												<button type="button" class="sosul_good_btn" onclick="heartimg()">
													 <img src="../img/icons8-heart-50.png" id="heart1" class="good_heart_icon">
													<span class="good_heart_cnttext">1000</span>
												</button>
											</div>
											<div class="sosul_detail_palce_wrap">
											<div class="sosul_detail_palce">
												<ul>
													<li><a href="">카카오</a></li>
													<li><a href="">시리즈</a></li>
													<li><a href="">문피아</a></li>
													<li><a href="">RIDI</a></li>
												</ul>
											</div>
											</div>
											<div class="sosul_share_sns_wrap">
												<div class="sosul_share_sns">
													<a href=""><img src="../img/kakao.png"></a>
													<a href=""><img src="../img/facebook_logo.png"></a>
													<a href=""><img src="../img/twitter.png"></a>
												</div>
											</div>
										</div>
									</article>									
								</section>
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

	var cnt = 1;
	function changeimg(){
		var img1 = document.getElementById("img1");
		var img = document.getElementById("img2");
		
		if(cnt%2==1){
			img1.src="../../sosulmate/img/icons8-bookmark-red.png";

		}else{
			img1.src="../../sosulmate/img/icons8-bookmark-nocolor.png";

		}
		cnt++;
	}

$('.starRev span').click(function(){
	$(this).parent().children('span').removeClass('on');
	$(this).addClass('on').prevAll('span').addClass('on');
	return false;
});	
	
	var goodcnt = 1;
	function heartimg(){
		var heart1 = document.getElementById("heart1");

		if(goodcnt%2==1){
			heart1.src="../img/icons8-heart-50full.png";
		}else{
			heart1.src="../img/icons8-heart-50.png";
		}
		goodcnt++;
	}

	$('.alert_detail_link').click(function(){
		$('.spoiler_alert').css('display', 'none');
		$(this).hide();
		$('.comment_content').css('display', 'block');
	});
</script>
</html>