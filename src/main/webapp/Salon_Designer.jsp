<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
span::before {    
	background: url("./img/그림1.png") no-repeat 0px 0px;  
    content: "";
    display: inline-block;
    height: 15px;
    width: 5px;    
    margin: 0 3px 0 8px;
}

span{
	font-size:25px;
}

td {
	vertical-align : top;
}

</style>
<body>
<jsp:include page="Salon_Header.jsp"/>
<div class="content text-center pt-3 pb-3">
		<div class="map col-sm-6 p-5">
		<h2>Designer</h2>
		<hr>
		<table>
  			<tr>
    			<td><img src="./img/프로필1.jpg" width="50%"/></td>
    			<td><img src="./img/프로필2.jpg" width="50%"/></td><td><img src="./img/프로필3.jpg" width="50%"/></td>
 			 </tr>
 			 <tr>
 			 	<td><span>김은영 디자이너</span><br>두피, 탈모 관리사 자격증<br>메이크업1급,2급 자격증<br>메일프로페셔널 자격증<br>로레알 디플로마 수료<br>호유 디플로마 수료<br> 이미지메이킹 1급 자격증<br>퍼스널컬러 컨설턴트 1급 자격증</td>
 			 	<td><span>신진솔 디자이너</span><br>두피, 탈모 관리사 자격증<br>이미지 메이킹 1급 자격증<br>퍼스널 컬러 컨설털트 1급 자격증<br>스피치 지도사 1급 자격증<br>스타 디자이너 수료</td>
 			 	<td><span>김대영 디자이너</span><br>이미지메이킹 1급<br>스타 디자이너 수료<br>피부 관리사 자격증</td>
 			 </tr>
 			 <tr>
 			 	<td><button type="button" class="btn btn-outline-dark">예약하기</button></td><td><button type="button" class="btn btn-outline-dark">예약하기</button></td><td><button type="button" class="btn btn-outline-dark">예약하기</button></td>
		</table>
	</div>
</div>
<jsp:include page="Salon_Footer.jsp"/>
</body>
</html>