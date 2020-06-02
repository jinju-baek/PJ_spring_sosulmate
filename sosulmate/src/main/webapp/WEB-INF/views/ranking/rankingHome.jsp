<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://kit.fontawesome.com/825f57de13.js" crossorigin="anonymous"></script>
<title>rankingHome</title>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<style type="text/css">
a{
	text-decoration: none;
	color : inherit;
}
.ranking_main_wrap{
	width: 100%;
	margin: 0 auto;
}	

/*메뉴 상단바*/
.ranking_menu_wrap{
	width: 100%;
}
.ranking_menu_plat_wrap{
	position: relative;
	height: 52px;
	display: flex;
	line-height: 48px;
}
/*메뉴장르바*/
.ranking_menu_genre_wrap{
	position: relative;
	height: 52px;
	border-bottom : 1px solid #656464;
	display: flex;
	line-height: 48px;
}


/*ranking 본문*/
.sosul_rank_content{
	width: 100%;
	position: relative;
	min-height: 500px;
}
#ranking_best{
	padding-bottom: 70px;
	width : 1000px;
	padding-top: 30px;
	margin: auto;
}
.sosul_rank_list{
	margin-bottom: 20px;

}

/*소설목록*/
.sosul_rank_list_content{
	width: 20%;
	float : left;
	margin-top: 20px;

}
.sosul_rank{
	margin : 5px 0;
	padding-bottom: 5px;
	text-align: center;
	font-size: 20px;
	color : #666;
}
.sosul_rank_img_content{
	height: 167px;
	width: 190px;
	position: relative;
	display: block;
	margin : 0 45px;

}

.sosul_ranking_img_thumbnail_wrap{
	position: absolute;
	left : 0;
	bottom : 0;
	display: inline-block;
	height: auto;
}
.ranking_sosul_thumbnail{
	display: block;
	width: 100%;
	height: 100%;
	position: relative;

}

.rank_thumbnail{
	max-height: 167px;
	

}
.sosul_rank_hidden{
	position: absolute;
	display: inline-block;
	height: 0;
	width: 0;
	text-indent: -9999px;
	overflow: hidden;
}
.ranking_sosul_info_wrap{
	width: 110px;
	text-align: left;
	display: block;
	margin : 8px auto 0 auto;
	cursor : default;
}	

.ranking_sosul_tilte{
	font-weight: 400;
	font-size: 14px;
	text-align: left;

}

.sosul_rank_title_text{
	font-size: 14px;
	font-weight: 700;
	text-overflow: ellipsis;
	white-space: normal;
	overflow: hidden;

}
.ranking_sosul_writer{
	color : #666;
	font-size: 12px;
	font-weight: 400;
	margin-top: 3px;
	text-align: left;
}

.ranking_count_num{
	font-size: 12px;
	font-weight : 400;
	line-height: 1em;
	padding-top: 1px;
	display: inline-block;
	word-break: break-all;
}


.star-rating{
	width: 56px;
}
.star-rating, .star-rating span {
	display: inline-block;
	height: 9px;
	overflow: hidden;
	background: url('${path}/resources/img/star-ranking.png') no-repeat;

}
.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}



.ranking_star_rate_pcount{
	font-size: 11px;
	color: #999;
}
.ranking_star_rate_pcount_unit{
	font-size: 11px;
	color: #999;
}
.wrap-star{
	display: flex;
	align-items: center;
}

</style>	
</head>

<body>
	<div class="ranking_main_wrap">
		<div class="ranking_menu_wrap">
			<div class="ranking_menu_plat_wrap">
				<div class="topmenu_contain">
					<ul>
						<li class="rank_menu_active">
							<a href="#" >네이버시리즈</a>
						</li>
						<li class="rank_menu_active">
							<a href="#">카카오페이지</a>
						</li>
						<li class="rank_menu_active">
							<a href="#">문피아</a>
						</li >
						<li class="rank_menu_active">
							<a href="#">리디북스</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="ranking_menu_genre">
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
			</div>
			
		</div>
	
		<div class="ranking_main_content_wrap">
			<div class="sosul_rank_content">
				<section id="ranking_best">
					<div class="sosul_rank_list">
						<c:forEach items="${bookList}" var="one">
							<div class="sosul_rank_list_content">
								<p class="sosul_rank">${one.bno-3000000}</p>
								<div class="sosul_rank_img_content">
									<div class="sosul_ranking_img_thumbnail_wrap">
										<div class="ranking_sosul_thumbnail">
											<a href=""><img class = "rank_thumbnail"src="${one.thumbnail}"></a>
											<span></span>
										</div>
										<a href=""><span class="sosul_rank_hidden">상세페이지 바로가기</span></a>
									</div>
								</div>
	
								<div class="ranking_sosul_info_wrap">
									<h5 class="ranking_sosul_tilte">
										<a href=""><span class="sosul_rank_title_text">${one.title}</span></a>
									</h5>
									<p class="ranking_sosul_writer"><a href="">${one.writer}</a></p>
									<p class="ranking_star_rate_wrap">
										<span class="ranking_star_rate">
											<div class="wrap-star">
												<div class="star-rating">
													<span style="width:60%"></span>
												</div>
												<div class="ranking_star_rate_pcount">777 
													<span class="ranking_star_rate_pcount_unit">명</span>
												</div>
											</div>
										</span>
									</p>
									<p><span class="ranking_count_num">${one.complete}</span></p>
								</div>	
							</div>
						</c:forEach>

						
					
						
					
					</div>
				</section>
			</div>
			
		</div>
		


	</div>
<%@ include file="../include/footer.jsp"%>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		var bno = ${one.bno}.indexOf()
		bno = $('.sosulrank').val()
		
		$('.ranking_menu_plat_contain a').click(function(){
			$('.ranking_menu_plat_contain a').css('color', '#2F3138')
											 .css('border', '2px solid white');
			$(this).css('color', '#E50020')
					.css('border', '2px solid #E50020');
		});
		$('.topmenu_contain a').click(function(){
			$('.topmenu_contain a').css('color', '#2F3138')
 								   .css('border', '2px solid white');
			$(this).css('color', '#E50020')
				   .css('border', '2px solid #E50020');
		});
		
	});


</script>
</html>