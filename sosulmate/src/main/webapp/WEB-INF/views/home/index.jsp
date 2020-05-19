<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>sosulmate_index</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
	<script src="https://kit.fontawesome.com/83b564820d.js" crossorigin="anonymous"></script>
	<style type="text/css">
		a {
			color: inherit;
			text-decoration: none;
		}
		.ally {
			position: absolute;
			width: 1px;
			height: 1px;
			clip: rect(0px, 0px, 0px, 0px);
			margin: -1px;
			padding: 0px;
			overflow: hidden;
			border-width: initial;
			border-color: initial;
			border-image: initial;
		}
		.index_best_wrap {
			max-width: 1000px;
			margin: 0 auto;
			padding-top: 24px;
			padding-bottom: 24px;
			position: relative;
		}
		.best_title {
			font-size: 20px;
		}
		.best_content_book {
			margin-top: 10px;
			display: flex;
		}
		.todaybest_wrap {
			width: 259px;
			display: inline-block;
			vertical-align: top;
			margin-right: 15px;
		}
		.todaybest_naver {
			background-color: #03c73c;
		}
		.todaybest_naver h2 {
			line-height: 1.8;
			text-align: center;
		}
		.todaybest_daum {
			background-color: #f46e85;
		}
		.todaybest_daum h2 {
			line-height: 1.8;
			text-align: center;
		}
		.todaybest_ridi {
			background-color: #1F8CE6;
		}
		.todaybest_ridi h2 {
			line-height: 1.8;
			text-align: center;
		}
		.todaybest_munpia {
			background-color: #5f9bd1;
		}
		.todaybest_munpia h2 {
			line-height: 1.8;
			text-align: center;
		}
		.list_text {
			margin-top: 6px;
		}
		.list_text li {
			min-height: 30px;
			border: 1px solid #ddd;
			margin-top: 3px;
			background-color: #fff;
			position : relative;
		}
		.list_text li:nth-child(odd) {
			background-color: #fafafa;
		}
		.list_text li:hover { border: 1px solid #c62125; }
		.list_text a:hover { color: #c62125; }
		.list_text a {
			width: 100% !important;
		}
		.list_text .bestbook_nums {
			font-weight: 500;
			font-style: italic;
			margin-right: 10px;
		}
		.list_text li a {
			color: #000;
			font-size: 12px;
			padding: 5px 10px;
			display: block;
			text-overflow: ellipsis;
			white-space: nowrap;
			overflow: hidden;
		}
		.bestbook  {
			padding: 20px 10px;
		}

		/*신간 리스트*/
		.index_new_wrap {
			max-width: 1150px;
			margin : 0 auto;
			padding-top: 24px;
			padding-bottom: 24px;
		}
		.new_title > span {
			font-size: 20px;
		}
		.new_book_full {
			padding-top: 20px;
			width: 1005px;
			max-width: 1005px;
			position: relative;
			height: 100%;
		}
		.new_book_content {
			width: 1168px;
			margin : -8px auto 0px;
			overflow: hidden;
		}
		.new_book_list {
			display: flex;
			flex-wrap: nowrap;
			padding-top: 8px;
			padding-left: 7px;
			transform: translateX(0px);
			transition: transform 0.2s ease 0s;
		}
		.new_book_onelist {
			display: flex;
			flex-direction: column;
			outline: none;
		}
		.new_book_fullimg {
			width: 140px;
			height: 216px;
			display: flex;
			align-items: flex-end;
			flex-shrink: 0;
			transition: opacity 0.2s ease 0s;
		}
		.new_book_smallimg {
			position: relative;
			line-height: 0;
			max-height: inherit;
			display: block;
			box-sizing: border-box;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: linear-gradient(to right,rgba(0,0,0,.2) 0,rgba(0,0,0,0) 5%,rgba(0,0,0,0) 95%,rgba(0,0,0,.2) 100% );
			border: solid 1px rgba(0,0,0,.1);
			content: '';

		}
		.new_book_oneimg {
			max-height: calc(216.52px);
			width: 140px;
		}
		.new_book_detail {
			margin-top: 10px;
			display: flex;
			flex-direction: column;
			width: 140px;
			transition: opacity 0.2s ease-in-out 0s;
		}
		.new_book_title {
			font-size: 14px;
			font-weight: 700;
			line-height: 1.33em;
			color: #000000;
			max-height: 2.7em;
			margin-bottom: 4.5px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			white-space: normal;
			word-break: keep-all;
		}
		.new_book_writer {
			height: 19px;
			font-size: 14px;
			line-height: 1.36;
			color: #636c73;
			margin-bottom: 2px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			white-space: normal;
			word-break: keep-all;
		}
		/*추천 리스트*/
		.index_recommend_wrap {
			max-width: 1150px;
			margin : 0 auto;
			padding-top: 24px;
			padding-bottom: 24px;
		}
		.recommend_title > span {
			font-size: 20px;
		}
		.recommend_book_full {
			padding-top: 20px;
			width: 1005px;
			max-width: 1005px;
			position: relative;
			height: 100%;
		}
		.recommend_book_content {
			width: 1168px;
			margin : -8px auto 0px;
			overflow: hidden;
		}
		.recommend_book_list {
			display: flex;
			flex-wrap: nowrap;
			padding-top: 8px;
			padding-left: 7px;
			transform: translateX(0px);
			transition: transform 0.2s ease 0s;
		}
		.recommend_book_onelist {
			display: flex;
			flex-direction: column;
			outline: none;
		}
		.recommend_book_fullimg {
			width: 140px;
			height: 216px;
			display: flex;
			align-items: flex-end;
			flex-shrink: 0;
			transition: opacity 0.2s ease 0s;
		}
		.recommend_book_smallimg {
			position: relative;
			line-height: 0;
			max-height: inherit;
			display: block;
			box-sizing: border-box;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: linear-gradient(to right,rgba(0,0,0,.2) 0,rgba(0,0,0,0) 5%,rgba(0,0,0,0) 95%,rgba(0,0,0,.2) 100% );
			border: solid 1px rgba(0,0,0,.1);
			content: '';

		}
		.recommend_book_oneimg {
			max-height: calc(216.52px);
			width: 140px;
		}
		.recommend_book_detail {
			margin-top: 10px;
			display: flex;
			flex-direction: column;
			width: 140px;
			transition: opacity 0.2s ease-in-out 0s;
		}
		.recommend_book_title {
			font-size: 14px;
			font-weight: 700;
			line-height: 1.33em;
			color: #000000;
			max-height: 2.7em;
			margin-bottom: 4.5px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			white-space: normal;
			word-break: keep-all;
		}
		.recommend_book_writer {
			height: 19px;
			font-size: 14px;
			line-height: 1.36;
			color: #636c73;
			margin-bottom: 2px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			white-space: normal;
			word-break: keep-all;
		}
		/*캐러셀*/

		
		.center { 
			position: relative;
			width: 1240px;
			margin: 0 auto;
		}
		.center button {
			position: absolute; 
			z-index: 10; top: 50%; 
			transform: translateY(-50%); 
			width: 45px;
			height: 45px; 
			border-radius: 100%; 
			background: rgba(0, 0, 0, .5); 
			border: none;
		}
		.center button.slick:before {
			font-family: 'xeicon';
			color: #fff;
			font-size: 20px;
		}
		.center button.slick-prev:before { 
			content: "\e93d"; 
			font-family: 'xeicon';
		}
		.center button.slick-prev { 
			left: -65px; 
			font-size: 0; 
			color: transparent; 
		}
		.center button.slick-next:before { 
			content: "\e940"; 
			font-family: 'xeicon'; 
		}
		.center button.slick-next { 
			right: -65px; 
			font-size: 0; 
			color: transparent; 
		}
		.center div.slick-slide {
			padding-left: 15px;
		}
		.center div.slick-center {
			
			animation-duration: 3s;
			transform: scaleX(1.3) scaleY(1.3);
			opacity: 2.0;
			width: 470px;
		}

		.visual div:not(.slick-center) {
			padding-top: 13px;

		}
		.center div.draggable {
			height: 360px;
		}
		div.slick-slide > img {
			width: 200px;
			height: 286px;
		}
		.recommend_book_list { 
			position: relative;
			width: 980px;
			margin: 0 auto;
		}
		.recommend_book_list button {
			position: absolute; 
			z-index: 10; top: 50%; 
			transform: translateY(-50%); 
			width: 40px;
			height: 40px; 
			border-radius: 100%;
			box-shadow: rgba(0,0,0,0.33) 0px 0.8px 3px; 
			background: white; 
			border: none;
		}
		.recommend_book_list button.slick:before {
			font-family: 'xeicon';
			color: #fff;
			font-size: 20px;
		}
		.recommend_book_list button.slick-prev:before { 
			content: "\e93d"; 
			color: black;
			font-family: 'xeicon';
		}
		.recommend_book_list button.slick-prev { 
			left: -56px; 
			font-size: 0; 
			color: transparent; 
		}
		.recommend_book_list button.slick-next:before { 
			content: "\e940"; 
			color: black;
			font-family: 'xeicon'; 
		}
		.recommend_book_list button.slick-next { 
			right: -56px; 
			font-size: 0; 
			color: transparent; 
		}
		.new_book_list { 
			position: relative;
			width: 980px;
			margin: 0 auto;
		}
		.new_book_list button {
			position: absolute; 
			z-index: 10; top: 50%; 
			transform: translateY(-50%); 
			width: 40px;
			height: 40px; 
			border-radius: 100%;
			box-shadow: rgba(0,0,0,0.33) 0px 0.8px 3px; 
			background: white; 
			border: none;
		}
		.new_book_list button.slick:before {
			font-family: 'xeicon';
			color: #fff;
			font-size: 20px;
		}
		.new_book_list button.slick-prev:before { 
			content: "\e93d"; 
			color: black;
			font-family: 'xeicon';
		}
		.new_book_list button.slick-prev { 
			left: -56px; 
			font-size: 0; 
			color: transparent; 
		}
		.new_book_list button.slick-next:before { 
			content: "\e940"; 
			color: black;
			font-family: 'xeicon'; 
		}
		.new_book_list button.slick-next { 
			right: -56px; 
			font-size: 0; 
			color: transparent; 
		}

	</style>
</head>
<body>
	<section class="visual">
		    <div class="center">
		        <div><img src="${path}/resources/img/booklist1.jpg"></div>
				<div><img src="${path}/resources/img/booklist2.png"></div>
				<div><img src="${path}/resources/img/booklist3.jpg"></div>
				<div><img src="${path}/resources/img/booklist4.jpg"></div>
				<div><img src="${path}/resources/img/booklist5.jpg"></div>
				<div><img src="${path}/resources/img/booklist6.jpg"></div>
				<div><img src="${path}/resources/img/booklist7.jpg"></div>
				<div><img src="${path}/resources/img/booklist8.jpg"></div>
				<div><img src="${path}/resources/img/로맨스1.jpg"></div>
				<div><img src="${path}/resources/img/로맨스2.jpg"></div>
		    </div>
    </section>

	<div class ="index_best_wrap">
		<h2 class="best_title">
			<a href="#">베스트셀러</a>
			<i class="fas fa-angle-right"></i>
		</h2>

		<div class="best_content_book">
			<div class="todaybest_wrap">
				<div class="todaybest_naver">
					<div class="bestbook">
						<h2>네이버 베스트셀러</h2>
					</div>
				</div>

				<ul class="list_text">
					<li>
						<a href="#" title="그 남자 기피증">
							<span class="bestbook_nums">1</span>
							<span class="bextbook_writer">[유리지니]</span>
							그 남자 기피증
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="나를 길들인 짐승">
							<span class="bestbook_nums">2</span>
							<span class="bextbook_writer">[감사]</span>
							나를 길들인 짐승
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="후배의 유혹">
							<span class="bestbook_nums">3</span>
							<span class="bextbook_writer">[유설아(미하)]</span>
							후배의 유혹
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="그들이 사는 지옥">
							<span class="bestbook_nums">4</span>
							<span class="bextbook_writer">[삐뚜리]</span>
							그들이 사는 지옥
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="길 잃은 별은">
							<span class="bestbook_nums">5</span>
							<span class="bextbook_writer">[에라키향기]</span>
							길 잃은 별은
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="미스 아줌마">
							<span class="bestbook_nums">6</span>
							<span class="bextbook_writer">[윤연주 영어샘]</span>
							미스 아줌마
						</a>
					</li>
				</ul>


				<ul class="list_text">
					<li>
						<a href="#" title="향하 아스라이">
							<span class="bestbook_nums">7</span>
							<span class="bextbook_writer">[청조]</span>
							향하 아스라이
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="여우와의 하룻밤">
							<span class="bestbook_nums">8</span>
							<span class="bextbook_writer">[sle]</span>
							여우와의 하룻밤
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="상속녀의 첫 사랑">
							<span class="bestbook_nums">9</span>
							<span class="bextbook_writer">[은하연]</span>
							상속녀의 첫 사랑
						</a>
					</li>
				</ul>
			</div>

			<div class="todaybest_wrap">
				<div class="todaybest_daum">
					<div class="bestbook">
						<h2>다음 베스트셀러</h2>
					</div>
				</div>

				<ul class="list_text">
					<li>
						<a href="#" title="그 남자 기피증">
							<span class="bestbook_nums">1</span>
							<span class="bextbook_writer">[유리지니]</span>
							그 남자 기피증
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="나를 길들인 짐승">
							<span class="bestbook_nums">2</span>
							<span class="bextbook_writer">[감사]</span>
							나를 길들인 짐승
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="후배의 유혹">
							<span class="bestbook_nums">3</span>
							<span class="bextbook_writer">[유설아(미하)]</span>
							후배의 유혹
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="그들이 사는 지옥">
							<span class="bestbook_nums">4</span>
							<span class="bextbook_writer">[삐뚜리]</span>
							그들이 사는 지옥
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="길 잃은 별은">
							<span class="bestbook_nums">5</span>
							<span class="bextbook_writer">[에라키향기]</span>
							길 잃은 별은
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="미스 아줌마">
							<span class="bestbook_nums">6</span>
							<span class="bextbook_writer">[윤연주 영어샘]</span>
							미스 아줌마
						</a>
					</li>
				</ul>


				<ul class="list_text">
					<li>
						<a href="#" title="향하 아스라이">
							<span class="bestbook_nums">7</span>
							<span class="bextbook_writer">[청조]</span>
							향하 아스라이
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="여우와의 하룻밤">
							<span class="bestbook_nums">8</span>
							<span class="bextbook_writer">[sle]</span>
							여우와의 하룻밤
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="상속녀의 첫 사랑">
							<span class="bestbook_nums">9</span>
							<span class="bextbook_writer">[은하연]</span>
							상속녀의 첫 사랑
						</a>
					</li>
				</ul>
			</div>

			<div class="todaybest_wrap">
				<div class="todaybest_ridi">
					<div class="bestbook">
						<h2>리디 베스트셀러</h2>
					</div>
				</div>

				<ul class="list_text">
					<li>
						<a href="#" title="그 남자 기피증">
							<span class="bestbook_nums">1</span>
							<span class="bextbook_writer">[유리지니]</span>
							그 남자 기피증
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="나를 길들인 짐승">
							<span class="bestbook_nums">2</span>
							<span class="bextbook_writer">[감사]</span>
							나를 길들인 짐승
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="후배의 유혹">
							<span class="bestbook_nums">3</span>
							<span class="bextbook_writer">[유설아(미하)]</span>
							후배의 유혹
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="그들이 사는 지옥">
							<span class="bestbook_nums">4</span>
							<span class="bextbook_writer">[삐뚜리]</span>
							그들이 사는 지옥
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="길 잃은 별은">
							<span class="bestbook_nums">5</span>
							<span class="bextbook_writer">[에라키향기]</span>
							길 잃은 별은
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="미스 아줌마">
							<span class="bestbook_nums">6</span>
							<span class="bextbook_writer">[윤연주 영어샘]</span>
							미스 아줌마
						</a>
					</li>
				</ul>


				<ul class="list_text">
					<li>
						<a href="#" title="향하 아스라이">
							<span class="bestbook_nums">7</span>
							<span class="bextbook_writer">[청조]</span>
							향하 아스라이
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="여우와의 하룻밤">
							<span class="bestbook_nums">8</span>
							<span class="bextbook_writer">[sle]</span>
							여우와의 하룻밤
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="상속녀의 첫 사랑">
							<span class="bestbook_nums">9</span>
							<span class="bextbook_writer">[은하연]</span>
							상속녀의 첫 사랑
						</a>
					</li>
				</ul>
			</div>

			<div class="todaybest_wrap">
				<div class="todaybest_munpia">
					<div class="bestbook">
						<h2>문피아 베스트셀러</h2>
					</div>
				</div>

				<ul class="list_text">
					<li>
						<a href="#" title="그 남자 기피증">
							<span class="bestbook_nums">1</span>
							<span class="bextbook_writer">[유리지니]</span>
							그 남자 기피증
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="나를 길들인 짐승">
							<span class="bestbook_nums">2</span>
							<span class="bextbook_writer">[감사]</span>
							나를 길들인 짐승
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="후배의 유혹">
							<span class="bestbook_nums">3</span>
							<span class="bextbook_writer">[유설아(미하)]</span>
							후배의 유혹
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="그들이 사는 지옥">
							<span class="bestbook_nums">4</span>
							<span class="bextbook_writer">[삐뚜리]</span>
							그들이 사는 지옥
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="길 잃은 별은">
							<span class="bestbook_nums">5</span>
							<span class="bextbook_writer">[에라키향기]</span>
							길 잃은 별은
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="미스 아줌마">
							<span class="bestbook_nums">6</span>
							<span class="bextbook_writer">[윤연주 영어샘]</span>
							미스 아줌마
						</a>
					</li>
				</ul>


				<ul class="list_text">
					<li>
						<a href="#" title="향하 아스라이">
							<span class="bestbook_nums">7</span>
							<span class="bextbook_writer">[청조]</span>
							향하 아스라이
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="여우와의 하룻밤">
							<span class="bestbook_nums">8</span>
							<span class="bextbook_writer">[sle]</span>
							여우와의 하룻밤
						</a>
					</li>
				</ul>

				<ul class="list_text">
					<li>
						<a href="#" title="상속녀의 첫 사랑">
							<span class="bestbook_nums">9</span>
							<span class="bextbook_writer">[은하연]</span>
							상속녀의 첫 사랑
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="index_recommend_wrap">
		<h2 class="recommend_title">
			<span>금주의 추천작품</span>
		</h2>
		<div>
			<div class="recommend_book_full">
				<div class="recommend_book_content">
					<ul class="recommend_book_list">
						<li class="recommend_book_onelist">
							<a href="#" class="recommend_book_rank">
								<div class="recommend_book_fullimg">
									<div class="recommend_book_smallimg">
										<img src="${path}/resources/img/1.jpg" class="recommend_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="recommend_book_detail">
								<a href="#">
									<div class="recommend_book_title">얼음나무 숲</div>
								</a>
								<span class="recommend_book_writer">
									<a href="#">하지은</a>
								</span>
							</div>
						</li>

						<li class="recommend_book_onelist">
							<a href="#" class="recommend_book_rank">
								<div class="recommend_book_fullimg">
									<div class="recommend_book_smallimg">
										<img src="${path}/resources/img/2.jpg" class="recommend_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="recommend_book_detail">
								<a href="#">
									<div class="recommend_book_title">일상의 악센트</div>
								</a>
								<span class="recommend_book_writer">
									<a href="#">마쓰우라 야타로</a>
								</span>
							</div>
						</li>

						<li class="recommend_book_onelist">
							<a href="#" class="recommend_book_rank">
								<div class="recommend_book_fullimg">
									<div class="recommend_book_smallimg">
										<img src="${path}/resources/img/3.jpg" class="recommend_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="recommend_book_detail">
								<a href="#">
									<div class="recommend_book_title">우리가 도시를 바꿀수 있을까?</div>
								</a>
								<span class="recommend_book_writer">
									<a href="#">최성용</a>
								</span>
							</div>
						</li>

						<li class="recommend_book_onelist">
							<a href="#" class="recommend_book_rank">
								<div class="recommend_book_fullimg">
									<div class="recommend_book_smallimg">
										<img src="${path}/resources/img/4.jpg" class="recommend_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="recommend_book_detail">
								<a href="#">
									<div class="recommend_book_title">2020 리츠가온다</div>
								</a>
								<span class="recommend_book_writer">
									<a href="#">이광주,윤정한</a>
								</span>
							</div>
						</li>

						<li class="recommend_book_onelist">
							<a href="#" class="recommend_book_rank">
								<div class="recommend_book_fullimg">
									<div class="recommend_book_smallimg">
										<img src="${path}/resources/img/5.jpg" class="recommend_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="recommend_book_detail">
								<a href="#">
									<div class="recommend_book_title">3개월마다 만다는 마이크로 트렌드</div>
								</a>
								<span class="recommend_book_writer">
									<a href="#">포럼M</a>
								</span>
							</div>
						</li>

						<li class="recommend_book_onelist">
							<a href="#" class="recommend_book_rank">
								<div class="recommend_book_fullimg">
									<div class="recommend_book_smallimg">
										<img src="${path}/resources/img/6.jpg" class="recommend_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="recommend_book_detail">
								<a href="#">
									<div class="recommend_book_title">좌절의 기술</div>
								</a>
								<span class="recommend_book_writer">
									<a href="#">윌리엄 B, 어빈</a>
								</span>
							</div>
						</li>

						<li class="recommend_book_onelist">
							<a href="#" class="recommend_book_rank">
								<div class="recommend_book_fullimg">
									<div class="recommend_book_smallimg">
										<img src="${path}/resources/img/7.jpg" class="recommend_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="recommend_book_detail">
								<a href="#">
									<div class="recommend_book_title">움직임의 힘</div>
								</a>
								<span class="recommend_book_writer">
									<a href="#">켈리 맥고니걸</a>
								</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="index_new_wrap">
		<h2 class="new_title">
			<span>금주의 신간</span>
		</h2>
		<div>
			<div class="new_book_full">
				<div class="new_book_content">
					<ul class="new_book_list">
						<li class="new_book_onelist">
							<a href="#" class="new_book_rank">
								<div class="new_book_fullimg">
									<div class="new_book_smallimg">
										<img src="${path}/resources/img/1.jpg" class="new_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="new_book_detail">
								<a href="#">
									<div class="new_book_title">얼음나무 숲</div>
								</a>
								<span class="new_book_writer">
									<a href="#">하지은</a>
								</span>
							</div>
						</li>

						<li class="new_book_onelist">
							<a href="#" class="new_book_rank">
								<div class="new_book_fullimg">
									<div class="new_book_smallimg">
										<img src="${path}/resources/img/2.jpg" class="new_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="new_book_detail">
								<a href="#">
									<div class="new_book_title">일상의 악센트</div>
								</a>
								<span class="new_book_writer">
									<a href="#">마쓰우라 야타로</a>
								</span>
							</div>
						</li>

						<li class="new_book_onelist">
							<a href="#" class="new_book_rank">
								<div class="new_book_fullimg">
									<div class="new_book_smallimg">
										<img src="${path}/resources/img/3.jpg" class="new_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="new_book_detail">
								<a href="#">
									<div class="new_book_title">우리가 도시를 바꿀수 있을까?</div>
								</a>
								<span class="new_book_writer">
									<a href="#">최성용</a>
								</span>
							</div>
						</li>

						<li class="new_book_onelist">
							<a href="#" class="new_book_rank">
								<div class="new_book_fullimg">
									<div class="new_book_smallimg">
										<img src="${path}/resources/img/4.jpg" class="new_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="new_book_detail">
								<a href="#">
									<div class="new_book_title">2020 리츠가온다</div>
								</a>
								<span class="new_book_writer">
									<a href="#">이광주,윤정한</a>
								</span>
							</div>
						</li>

						<li class="new_book_onelist">
							<a href="#" class="new_book_rank">
								<div class="new_book_fullimg">
									<div class="new_book_smallimg">
										<img src="${path}/resources/img/5.jpg" class="new_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="new_book_detail">
								<a href="#">
									<div class="new_book_title">3개월마다 만다는 마이크로 트렌드</div>
								</a>
								<span class="new_book_writer">
									<a href="#">포럼M</a>
								</span>
							</div>
						</li>

						<li class="new_book_onelist">
							<a href="#" class="new_book_rank">
								<div class="new_book_fullimg">
									<div class="new_book_smallimg">
										<img src="${path}/resources/img/6.jpg" class="new_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="new_book_detail">
								<a href="#">
									<div class="new_book_title">좌절의 기술</div>
								</a>
								<span class="new_book_writer">
									<a href="#">윌리엄 B, 어빈</a>
								</span>
							</div>
						</li>

						<li class="new_book_onelist">
							<a href="#" class="new_book_rank">
								<div class="new_book_fullimg">
									<div class="new_book_smallimg">
										<img src="${path}/resources/img/7.jpg" class="new_book_oneimg">
										<div></div>
									</div>
								</div>
							</a>
							<div class="new_book_detail">
								<a href="#">
									<div class="new_book_title">움직임의 힘</div>
								</a>
								<span class="new_book_writer">
									<a href="#">켈리 맥고니걸</a>
								</span>
							</div>
						</li>
					</ul>
				</div>
				
			</div>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		//alert('123');
		$('.center').slick({
		  centerMode: true,
		  speed : 2000,
		  //dots: true, // 밑에 점점점
		  infinite : true,
		  centerPadding: '5px', 
		  slidesToShow: 5, // 한 화면에 보여질 컨텐츠 개수
		  responsive: [ // 반응형 웹 구현 옵션
		    {
		      breakpoint: 180, // 화면사이즈 768px
		      settings: {  // //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
		        arrows: false, // 옆으로 이동하는 화살표 표시 여부
		        centerMode: true, //
		        centerPadding: '5px', //
		        slidesToShow: 5 // 한 화면에 보여질 컨텐츠 개수
		      }
		    },
		    {
		      breakpoint: 180,
		      settings: {
		        arrows: false,
		        centerMode: true,
		        centerPadding: '5px',
		        slidesToShow: 5
		      }
		    }
		  ]
		});

		$('.new_book_list').slick({
		  slidesToShow: 5,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 4000,
		});

		$('.recommend_book_list').slick({
		  slidesToShow: 5,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 4000,
		});


		
	});

	


</script>
</html>