<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%> 
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<script src="https://kit.fontawesome.com/83b564820d.js" crossorigin="anonymous"></script>
	<title>sosulmate_booklist_romance</title>
	<style type="text/css">
		fieldset {
			margin: 0;
			padding: 0;
			border: 0;
			font: inherit;
			vertical-align: baseline;
		}
		.invisible {
			position: absolute;
			width: 1px;
			height: 1px;
			margin: -1px;
			padding: 0;
			overflow: hidden;
			border : 0;
			clip: rect(0, 0, 0, 0);
		}
		#books_contents_wrap {
			width: 100%;
			position: relative;
			overflow-x: hidden;
			overflow-y: hidden;
			min-height: 500px;
		}
		#romancekeyword {
			width: 1140px;
			margin-bottom: 24px;
			overflow: hidden;
			margin: 15px auto 15px;
		}
		.Header {
			position: relative;
			height: 56px;
		}
		.romance > .Header {
			background-color: #3f1c2b;
		}
		.Header_Maintitle {
			display: inline-block;
			line-height: 56px;
			color: #fff;
			font-size: 22px;
			font-weight: 700;
		}
		.fa-search {
			width: 20px;
			height: 20px;
			margin-right: 8px;
			margin-left : 1em;
			vertical-align: middle;
			fill: #fff;
		}
		.Header_subtitle {
			color: #d16476;
			padding-left: 8px;
			font-size: 12px;
			vertical-align: top;
			display: inline-block;
			line-height: 56px;
		}
		.Header_Resetbutton {
			background-color: #3f1c2b;
			position: absolute;
			top: 50%;
			right: 11px;
			width: 84px;
			height: 36px;
			transform: translate3d(0, -50%, 0);
			border-radius: 3px;
			color: #fff;
			font-size: 14px;
			font-weight: 700;
		}
		.romance > .romance_keywordgroup {
			border-color: #e7d6d9;
			background: #faf4f5;
		}
		.romance_keywordgroup {
			box-sizing: border-box;
			display: flex;
			width: 100%;
			border : 1px solid transparent;
			border-top: 0;
		}
		.fieldset {
			display: inline-block;
			-webkit-box-flex: 1;
			flex: 1 0 0;
		}
		.Group_header {
			color: #d16476;
			padding: 17px 0 9px;
			font-size: 12px;
			font-weight: 700;
			text-indent: 13px;
		}
		.ScrollWrapper {
			position: relative;
			overflow: hidden;
			width: 100%;
			height: 162px;
			border-right-width: 1px;
		}
		.subCategory {
			padding: 6px 10px;
			padding-right: 22px; 
		}
		.keywordList {
			display: block;
			margin-bottom: 2px;
		}
		.keyword {
			color: #3e0710;
			display: block;
			position: relative;
			border-radius: 3px;
			font-size: 13px;
			font-weight: 700;
			line-height: 1.2;
			white-space: break-all;
		}
		input[type=checkbox] {
			width: 18px;
			height: 18px;
			border: 1px solid #b9bcc2;
			background-color: transparent;
			cursor: pointer;
			box-shadow: inset 0 1px 0 #e5e5e5;
			border-radius: 4px;
			box-sizing: border-box;
			padding: 0;

		}
		.keyword_text {
			display: block;
			padding: 6px 5px;
			border-radius: 3px;
		}
		.Scrollbar {
 			background: #f1e1e3;
 			top: 7px;
 			right: 9px;
 			bottom: 7px;
 			overflow: hidden;
 			border-radius: 4px;
 			pointer-events: auto;
		}
		.Scollindicator {
			background: #e9c1c6;
			border-radius: 4px;
			cursor: pointer;
		}
		label:hover {
			background-color: #e3a2ac;
		}

		/*로맨스리스트============================================================*/

		.page_menu_content {
			position: relative;
			background-color: #fff;
			border-bottom: 2px solid #9E9E9E;
			border-top: 2px solid  #9E9E9E;
			height: 52px;
			line-height: 48px;
		}
		.page_menu_content > .container {
			position: relative;
		}
		.page_menu_content nav {
			background-color: #fff;
			text-align : center;
		}
		.page_menu_content nav > ul {
			list-style: none;
			padding: 0;
			margin : 0;
			position: relative;
		}
		.page_menu_content nav > ul > li {
			position: relative;
			border: 0;
			display: inline-block;
			float: none;
			padding: 0px 50px;
		}
		.booklist_title {
			padding-top: 0px!important;
			max-width: 1140px;
			margin : 0 auto;
		}
		.booklist_name {
			display: inline-block;
		}
		strong { font-weight: 600; }
		small { font-size: 80%; font-weight: 400; }
		.booklist_day {
			font-size: 13px;
			text-align: right;
			padding-top: 30px;
		}
		span { padding-left: 8px; }
		.booklist_all {
			display: flex;
			padding-top: 3px;
		}
		.booklist_order {
			font-size: 13px;
			margin-left: auto;
		}
		.border {
			border-bottom: 1px solid rgba(0,0,0,.1);
		}
		.booklist_content_wrap {
			padding-top: 15px!important;
		}
		.booklist_content {
			max-width: 1140px;
			margin : 0 auto;
		}
		.booklist_class {
			position: relative;
		}
		.booklist_list {
			flex-wrap: -15px;
			margin-left: -15px;
		}
		.booklist_bar {
			-webkit-box-flex : 0;
			flex : 0 0 440px;
			max-width: 100%;
		}
		.booklist_one {
			width: 20%;
			float : left;
			-webkit-box-flex : 0;
			flex-wrap: 0 0 20%;
			max-width: 20%;
			position: relative;
			padding-left: 20px;
			padding-right: 10px;
		}
		.booklist_product {
			margin-bottom: 40px;
			position: relative;
			display: block;
		}
		.booklist_img {
			text-align: center;
			display: block;
			width: 100%;
			height: auto;
			position: relative;
			overflow: hidden;
		}
		.booklist_product_category {
			display: inline-block;
		}
		.booklist_product_category a {
			font-size: 11px;
		}
		.booklist_product_author {
			font-size: 12px;
			display: inline-block;
		}
		.booklist_product_title h3, .booklist_product_title h3 a {
			font-size: 15px;
			line-height: 20px;
		}
		.booklist_product_reviews {
			font-size: 12px;
			display: inline-block;
			float: none;
			margin-left: 5px;
		}
		.booklist_average_list {
			height: 10px;
			font-size: 11px;
			line-height: 1.09;
			color : #999999;
		}
		.booklist_basic_star {
			display: flex;
			position: relative;
			margin-right: 2px;
			line-height: 0;
		}
		.booklist_star {
			width: 90px;
			height: 20px;
		}
		.booklist_yellow_star {
			position: absolute;
			left: 0;
			top: 0;
			height: 100%;
			overflow: hidden;
		}
		.booklist_number {
			padding-top: 6px;
		}
		.booklist_pp {
			display: flex;
			justify-content: space-between;
		}
		.btn_main_booklist_more {
			border: 2px solid #ddd;
			width: 100%;
			height: 60px;
			padding: 18px 20px;
			display: inline-block;
			text-align: center;
		}



	</style>
</head>
<body>
	<div class="page_menu_content">
		<div class="container">
			<nav>
				<ul>
					<li class="active">
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
			</nav>
		</div>
	</div>

	<div id="books_contents_wrap">
		<div>
			<div id="appReact">
				<section class="romance" id="romancekeyword">
					<header class="Header">
						<h1 class="Header_Maintitle">
							<i class="fas fa-search" width="48" height="49"></i>
							로맨스 키워드로 검색하기
						</h1>
						<p class="Header_subtitle">키워드로  마음에 드는 책을 찾아보세요!</p>
						<button type="button" class="Header_Resetbutton">전체 해제</button>
					</header>

					<div class="romance_keywordgroup">

						<fieldset class="fieldset">
							<div class="MainCategory">
								<h2 class="Group_header">장르/배경</h2>
								<div class="ScrollWrapper">
									<div style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; overflow: scroll; margin-right: -17px; margin-bottom: -17px;">
										<ul class="subCategory">

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="1">
													<span class="keyword_text">현대물</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2607">
													<span class="keyword_text">실존역사물</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2608">
													<span class="keyword_text">가상시대물</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2609">
													<span class="keyword_text">판타지물</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2610">
													<span class="keyword_text">동양풍</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2611">
													<span class="keyword_text">서양풍</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="6">
													<span class="keyword_text">궁정로맨스</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2612">
													<span class="keyword_text">컴퍼스물</span>
												</label>
											</li>

										</ul>
									</div>
									<div style="position: absolute; height: 6px; right: 2px; bottom: 2px; left: 2px; border-radius: 3px;">
										<div style="position: relative; display: block; height: 100%; cursor: pointer; border-radius: inherit; background-color: rgba(0, 0, 0, 0.2); width: 0px;"></div>
									</div>
									<div class="Scrollbar" style="position: absolute; width: 6px;">
										<div class="Scollindicator" style="position: relative; display: block; width: 100%; height: 67px; transform: translateY(0px);"></div>
									</div>
								</div>
							</div>
						</fieldset>

						<fieldset class="fieldset">
							<div class="MainCategory">
								<h2 class="Group_header">소재</h2>
								<div class="ScrollWrapper">
									<div style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; overflow: scroll; margin-right: -17px; margin-bottom: -17px;">
										<ul class="subCategory">

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2614">
													<span class="keyword_text">차원이동</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="38">
													<span class="keyword_text">전생/환생</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2616">
													<span class="keyword_text">영혼체인지/빙의</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="654">
													<span class="keyword_text">초능력</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="35">
													<span class="keyword_text">초월적존재</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="609">
													<span class="keyword_text">왕족/귀족</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2617">
													<span class="keyword_text">외국인/혼혈</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="9">
													<span class="keyword_text">남장여자</span>
												</label>
											</li>

										</ul>
									</div>
									<div style="position: absolute; height: 6px; right: 2px; bottom: 2px; left: 2px; border-radius: 3px;">
										<div style="position: relative; display: block; height: 100%; cursor: pointer; border-radius: inherit; background-color: rgba(0, 0, 0, 0.2); width: 0px;"></div>
									</div>
									<div class="Scrollbar" style="position: absolute; width: 6px;">
										<div class="Scollindicator" style="position: relative; display: block; width: 100%; height: 67px; transform: translateY(0px);"></div>
									</div>
								</div>
							</div>
						</fieldset>

						<fieldset class="fieldset">
							<div class="MainCategory">
								<h2 class="Group_header">관계</h2>
								<div class="ScrollWrapper">
									<div style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; overflow: scroll; margin-right: -17px; margin-bottom: -17px;">
										<ul class="subCategory">

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="32">
													<span class="keyword_text">재회물</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2628">
													<span class="keyword_text">오래된연인</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="19">
													<span class="keyword_text">첫사랑</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="36">
													<span class="keyword_text">친구>연인</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2629">
													<span class="keyword_text">라이벌/앙숙</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="17">
													<span class="keyword_text">사제지간</span>
												</label>
											</li>

										</ul>
									</div>
									<div style="position: absolute; height: 6px; right: 2px; bottom: 2px; left: 2px; border-radius: 3px;">
										<div style="position: relative; display: block; height: 100%; cursor: pointer; border-radius: inherit; background-color: rgba(0, 0, 0, 0.2); width: 0px;"></div>
									</div>
									<div class="Scrollbar" style="position: absolute; width: 6px;">
										<div class="Scollindicator" style="position: relative; display: block; width: 100%; height: 67px; transform: translateY(0px);"></div>
									</div>
								</div>
							</div>
						</fieldset>

						<fieldset class="fieldset">
							<div class="MainCategory">
								<h2 class="Group_header">남자 주인공</h2>
								<div class="ScrollWrapper">
									<div style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; overflow: scroll; margin-right: -17px; margin-bottom: -17px;">
										<ul class="subCategory">

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="32">
													<span class="keyword_text">츤데레남</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="3452">
													<span class="keyword_text">조신남</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="19">
													<span class="keyword_text">평범남</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="36">
													<span class="keyword_text">뇌섹남</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2629">
													<span class="keyword_text">능력남</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="17">
													<span class="keyword_text">재벌남</span>
												</label>
											</li>

										</ul>
									</div>
									<div style="position: absolute; height: 6px; right: 2px; bottom: 2px; left: 2px; border-radius: 3px;">
										<div style="position: relative; display: block; height: 100%; cursor: pointer; border-radius: inherit; background-color: rgba(0, 0, 0, 0.2); width: 0px;"></div>
									</div>
									<div class="Scrollbar" style="position: absolute; width: 6px;">
										<div class="Scollindicator" style="position: relative; display: block; width: 100%; height: 67px; transform: translateY(0px);"></div>
									</div>
								</div>
							</div>
						</fieldset>

						<fieldset class="fieldset">
							<div class="MainCategory">
								<h2 class="Group_header">여자 주인공</h2>
								<div class="ScrollWrapper">
									<div style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; overflow: scroll; margin-right: -17px; margin-bottom: -17px;">
										<ul class="subCategory">

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="32">
													<span class="keyword_text">평범녀</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="3452">
													<span class="keyword_text">뇌섹녀</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="19">
													<span class="keyword_text">능력녀</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="36">
													<span class="keyword_text">재벌녀</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2629">
													<span class="keyword_text">사이다녀</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="17">
													<span class="keyword_text">직진녀</span>
												</label>
											</li>

										</ul>
									</div>
									<div style="position: absolute; height: 6px; right: 2px; bottom: 2px; left: 2px; border-radius: 3px;">
										<div style="position: relative; display: block; height: 100%; cursor: pointer; border-radius: inherit; background-color: rgba(0, 0, 0, 0.2); width: 0px;"></div>
									</div>
									<div class="Scrollbar" style="position: absolute; width: 6px;">
										<div class="Scollindicator" style="position: relative; display: block; width: 100%; height: 67px; transform: translateY(0px);"></div>
									</div>
								</div>
							</div>
						</fieldset>

						<fieldset class="fieldset">
							<div class="MainCategory">
								<h2 class="Group_header">분위기/기타</h2>
								<div class="ScrollWrapper">
									<div style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; overflow: scroll; margin-right: -17px; margin-bottom: -17px;">
										<ul class="subCategory">

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="32">
													<span class="keyword_text">기다리면무료</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="3452">
													<span class="keyword_text">MARK-DOWN</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="19">
													<span class="keyword_text">단행본</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="36">
													<span class="keyword_text">연재중</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="2629">
													<span class="keyword_text">연재완결</span>
												</label>
											</li>

											<li class="keywordList">
												<label class="keyword">
													<input type="checkbox" class="keyword_control invisible" data-tag-id="17">
													<span class="keyword_text">달달물</span>
												</label>
											</li>

										</ul>
									</div>
									<div style="position: absolute; height: 6px; right: 2px; bottom: 2px; left: 2px; border-radius: 3px;">
										<div style="position: relative; display: block; height: 100%; cursor: pointer; border-radius: inherit; background-color: rgba(0, 0, 0, 0.2); width: 0px;"></div>
									</div>
									<div class="Scrollbar" style="position: absolute; width: 6px;">
										<div class="Scollindicator" style="position: relative; display: block; width: 100%; height: 67px; transform: translateY(0px);"></div>
									</div>
								</div>
							</div>
						</fieldset>
					</div>
					<div></div>
				</section>

					<div class="booklist_title">
						<div class="booklist_day">
							<a href="#">연재+완결</a><span>|</span>
							<a href="#">연재</a><span>|</span>
							<a href="#">완결</a>
						</div>
						<div class="booklist_all">
							<div class="booklist_menu container">
								<nav class="booklist_name">
									<span>
										<strong>로맨스
											<small>(10568)</small>
										</strong>
									</span>
								</nav>
							</div>
							<div class="booklist_order">
								<a href="#">별많은순</a><span>|</span>
								<a href="#">리뷰순</a><span>|</span>
								<a href="#">평점순</a><span>|</span>
								<a href="#">등록순</a>
							</div>
						</div>
						<hr class="border">
					</div>

					<div class="booklist_content_wrap">
						<div class="booklist_content">
							<div class="booklist_class">
								<div class="booklist_list">
									<div class="booklist_bar">
										<h3 style="margin-bottom: 15px;"></h3>
									</div>
					
									<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스1.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">밀차</a>
													</div>
												</div>
												<div class="booklist_product_title">
													<h3><a href="#">그녀가 공작저로 가야 했던 사정</a></h3>
												</div>
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.06</span>
														<div class="booklist_product_reviews">(39)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스2.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">차서진</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">리셋팅 레이디</a></h3>
													</div>
												
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.18</span>
														<div class="booklist_product_reviews">(30)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스3.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">유한려</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">인소의 법칙</a></h3>
													</div>
												
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">3.23</span>
														<div class="booklist_product_reviews">(11)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스4.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">강달콩</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">결혼하고 합시다</a></h3>
													</div>
											
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.12</span>
														<div class="booklist_product_reviews">(8)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스5.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">달슬</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">흑막 용을 키우게 되었다</a></h3>
													</div>
											
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">3.38</span>
														<div class="booklist_product_reviews">(8)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>


								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스6.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">김미유</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">그림자 없는 밤</a></h3>
													</div>

												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">2.96</span>
														<div class="booklist_product_reviews">(167)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>


								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스1.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">밀차</a>
													</div>
												</div>
												<div class="booklist_product_title">
													<h3><a href="#">그녀가 공작저로 가야 했던 사정</a></h3>
												</div>
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.06</span>
														<div class="booklist_product_reviews">(39)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스2.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">차서진</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">리셋팅 레이디</a></h3>
													</div>
												
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.18</span>
														<div class="booklist_product_reviews">(30)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스3.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">유한려</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">인소의 법칙</a></h3>
													</div>
												
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">3.23</span>
														<div class="booklist_product_reviews">(11)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스4.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">강달콩</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">결혼하고 합시다</a></h3>
													</div>
											
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.12</span>
														<div class="booklist_product_reviews">(8)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스1.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">밀차</a>
													</div>
												</div>
												<div class="booklist_product_title">
													<h3><a href="#">그녀가 공작저로 가야 했던 사정</a></h3>
												</div>
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.06</span>
														<div class="booklist_product_reviews">(39)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스2.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">차서진</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">리셋팅 레이디</a></h3>
													</div>
												
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.18</span>
														<div class="booklist_product_reviews">(30)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스3.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">유한려</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">인소의 법칙</a></h3>
													</div>
												
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">3.23</span>
														<div class="booklist_product_reviews">(11)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="booklist_one">
										<div class="booklist_product">
											<div class="booklist_img">
												<a href="#">
													<img src="../img/로맨스4.jpg" class="booklist_imgclass">
												</a>
											</div>
											<div class="booklist_contents">
												<div class="booklist_pp">
													<div class="booklist_product_category">
														<a href="#">로맨스</a>
													</div>
													<div class="booklist_product_author">
														<a href="#">강달콩</a>
													</div>
												</div>
													<div class="booklist_product_title">
														<h3><a href="#">결혼하고 합시다</a></h3>
													</div>
											
												
											<div class="booklist_average_star">
												<div class="booklist_basic_star">
													<img src="https://books.ridicdn.net/_next/static/images/NoStarRating-c478df104f4861a50a39308a1d889466.svg" class="booklist_star">
													<div class="booklist_yellow_star" style="width: 43px;">
														<img src="https://books.ridicdn.net/_next/static/images/StarRating-92a4a66c7699e6a0ccaa5ef7aa3c3529.svg" class="booklist_star">
													</div>
													<div class="booklist_number">
														<span class="booklist_average_list">4.12</span>
														<div class="booklist_product_reviews">(8)</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a href="#" class="btn_main_booklist_more">더보기</a>
						</div>
					</div>

			</div>
		</div>
	</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	  $(function(){
     	 $('.active a').click(function(){ 
         $('.active a').css('color', '#2F3138')
                            .css('border', '2px solid white');
         $(this).css('color', '#E50020')
               .css('border', '2px solid #E50020');
      });
   });
</script>
</html>