<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>살롱, 시스트 예약조회</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/Salon.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">

<script type="text/javascript">
	$(function() {
		$(".btn").click(function() {
			confirm("정말 취소하시겠습니까?");
		});
	});
</script>
</head>
<body>
	<jsp:include page="Salon_Header.jsp"/>
	
	<div class="content text-center pt-3 pb-3">
		<div class="book_form col-sm-8 p-5">
			<h2>살롱, 시스트 예약 조회</h2>
			<hr>
			<table class="table table-hover" style="border: 1px gray solid;">
				<thead>
			    	<tr class="table-active">
						<th scope="col">예약순번</th>
						<th scope="col">예약날짜</th>
						<th scope="col">예약시간</th>
						<th scope="col">시술종류</th>
						<th scope="col">상세</th>
						<th scope="col">디자이너</th>
						<th scope="col">상태</th>
					</tr>
				</thead>
				<tbody>
			  		<tr>
						<th scope="row">1</th>
				    	<td>2021/09/19</td>
				    	<td>10:00</td>
				    	<td>컷</td>
				    	<td>남성컷</td>
				    	<td>김대영 디자이너</td>
				    	<td><button class="btn btn-outline-dark btn-sm">취소</button></td>
				    </tr>
				    <tr>
						<th scope="row">2</th>
				    	<td>2021/07/07</td>
				    	<td>12:00</td>
				    	<td>펌</td>
				    	<td>아이롱펌</td>
				    	<td>김은영 디자이너</td>
				    	<td>완료</td>
				    </tr>
				    <tr>
						<th scope="row">3</th>
				    	<td>2021/06/02</td>
				    	<td>18:00</td>
				    	<td>컷</td>
				    	<td>남성컷</td>
				    	<td>김은영 디자이너</td>
				    	<td>완료</td>
				    </tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<jsp:include page="Salon_Footer.jsp"/>
</body>
</html>