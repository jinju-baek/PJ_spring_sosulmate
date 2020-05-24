<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/adminSidebar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		.adminpage_list_wrap{
			width: 900px;
		}
		.list_title{
			font-size: 30px;
			font-weight: bold;
			padding: 0 0 5px 10px;
		}
		table{
			border-top: 1px solid #D1D5D9;
			border-bottom: 1px solid #D1D5D9;
			margin: 10px 0;
			border-collapse: collapse;
		}
		th, td{
			border: none;
			text-align: center;
		}
		.list_table_num{
			width: 150px;
		}
		.list_table_title{
			width: 300px;
		}
		.list_table_writer, .list_table_date{
			width: 200px;
		}
	</style>
</head>
<body>
	<div class="adminpage_list_wrap">
		<div class="list_title">자유</div>
		<form method="" action="">
			<div class="smallSearch">
				<i class="fas fa-search"></i>
				<input type="text" name="" placeholder="검색">
			</div>
		</form>
		<table class="list_table_wrap">
			<tr>
				<th class="list_table_num">번호</th>
				<th class="list_table_title">제목</th>
				<th class="list_table_writer">작성자</th>
				<th class="list_table_date">날짜</th>
			</tr> 
			<tr>
				<td class="list_table_num">10</td>
				<td class="list_table_title">제가</td>
				<td class="list_table_writer">adadf12</td>
				<td class="list_table_date">2020/04/04</td>
			</tr>
			<tr>
				<td class="list_table_num">9</td>
				<td class="list_table_title">소설메이트 망했나요?</td>
				<td class="list_table_writer">dhzl1995</td>
				<td class="list_table_date">2020/04/01</td>
			</tr>
			<tr>
				<td class="list_table_num">8</td>
				<td class="list_table_title">등급이 안오르는데</td>
				<td class="list_table_writer">ajdajd</td>
				<td class="list_table_date">2020/03/19</td>
			</tr>
			<tr>
				<td class="list_table_num">7</td>
				<td class="list_table_title">정지먹었어요</td>
				<td class="list_table_writer">zlzlzl578</td>
				<td class="list_table_date">2020/03/15</td>
			</tr>
			<tr>
				<td class="list_table_num">6</td>
				<td class="list_table_title">왜 탈퇴된건가요?</td>
				<td class="list_table_writer">thtjfapdlxm4</td>
				<td class="list_table_date">2020/01/21</td>
			</tr>
			<tr>
				<td class="list_table_num">5</td>
				<td class="list_table_title">운영자님...</td>
				<td class="list_table_writer">zhffhsk99</td>
				<td class="list_table_date">2020/01/04</td>
			</tr>
			<tr>
				<td class="list_table_num">4</td>
				<td class="list_table_title">언제 답변주시죠</td>
				<td class="list_table_writer">pjj0647</td>
				<td class="list_table_date">2020/01/04</td>
			</tr>
			<tr>
				<td class="list_table_num">3</td>
				<td class="list_table_title">한 번만 봐주세요</td>
				<td class="list_table_writer">dmdkdkr12</td>
				<td class="list_table_date">2020/01/04</td>
			</tr>
			<tr>
				<td class="list_table_num">2</td>
				<td class="list_table_title">일 안하세요?</td>
				<td class="list_table_writer">whktepearl09</td>
				<td class="list_table_date">2020/01/04</td>
			</tr>
			<tr>
				<td class="list_table_num">1</td>
				<td class="list_table_title">운영자님...</td>
				<td class="list_table_writer">mapsizzang</td>
				<td class="list_table_date">2020/01/04</td>
			</tr>			
		</table>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		var table_num=$('td.list_table_num:eq(0)').text();
		for(var eq_num=1; eq_num<=table_num; eq_num=eq_num+2){
			$('tr:eq('+eq_num+')').css('background-color', '#F8F8F8');
		}
	});
</script>
</html>