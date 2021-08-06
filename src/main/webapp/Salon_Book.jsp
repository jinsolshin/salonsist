<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>살롱, 시스트 예약</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/Salon.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<script type="text/javascript">
	$(function() {
		document.getElementById('booker_date').value = new Date().toISOString().substring(0, 10);		
	});
</script>
</head>
<body>
	<jsp:include page="Salon_Header.jsp"/>
	
	<div class="content text-center pt-3 pb-3">
		<div class="book_form col-sm-5 p-5">
			<form class="text-center">
				<fieldset>
					<h2>살롱, 시스트 예약</h2>
					<hr>
					<div class="form-group text-start">
				    	<label for="booker_name" class="form-label mt-4">Name</label>
				    	<input type="text" class="form-control" id="booker_name" aria-describedby="booker_name_help" placeholder="Enter Name">
				    	<small id="booker_name_help" class="form-text text-muted">이름을 입력해주세요.</small>
					</div>
					<div class="form-group text-start">
				    	<label for="booker_phone" class="form-label mt-4">Phone</label>
				    	<input type="number" class="form-control" id="booker_phone" aria-describedby="booker_phone_help" placeholder="Enter Phone Number">
				    	<small id="booker_phone_help" class="form-text text-muted">연락처('-' 제외)를 입력해주세요.</small>
					</div>
					<div class="form-group text-start">
				    	<label for="booker_pwd" class="form-label mt-4">Password</label>
				    	<input type="password" class="form-control" id="booker_pwd" aria-describedby="booker_pwd_help" placeholder="Enter Password">
				    	<small id="booker_pwd_help" class="form-text text-muted">예약 비밀번호를 입력해주세요.</small>
					</div>
					<div class="form-group text-start">
				    	<label for="booker_date" class="form-label mt-4">Date</label>
				    	<input type="date" class="form-control" id="booker_date" aria-describedby="booker_date_help" placeholder="Enter Date">
				    	<small id="booker_date_help" class="form-text text-muted">예약 날짜를 선택해주세요.</small>
					</div>
					<div class="form-group text-start">
				    	<label for="booker_time" class="form-label mt-4">Time</label>
						<select class="form-select" id="booker_time">
							<option>-</option>
							<option>10:00</option>
							<option>11:00</option>
							<option>12:00</option>
							<option>13:00</option>
							<option>14:00</option>
							<option>15:00</option>
							<option>16:00</option>
							<option>17:00</option>
							<option>18:00</option>
							<option>19:00</option>
							<option>20:00</option>
					    </select>
				    	<small id="booker_time_help" class="form-text text-muted">예약 시간을 선택해주세요.</small>
					</div>
					<div class="form-group text-start">
				    	<label for="booker_designer" class="form-label mt-4">Designer</label>
				    	<select class="form-select" id="booker_designer">
							<option>-</option>
							<option>김은영 디자이너</option>
							<option>신진솔 디자이너</option>
							<option>김대영 디자이너</option>
							<option>정승원 디자이너</option>
							<option>김현욱 디자이너</option>
							<option>최정민 디자이너</option>
					    </select>
				    	<small id="booker_designer" class="form-text text-muted">담당 디자이너를 선택해주세요.</small>
					</div>
					<div class="form-group text-start">
				    	<label for="booker_menu" class="form-label mt-4">Menu</label>
						<select class="form-select" id="booker_menu">
							<option>-</option>
							<option>컷</option>
							<option>펌</option>
							<option>염색</option>
							<option>클리닉</option>
							<option>드라이</option>
					    </select>
				    	<small id="booker_menu_help" class="form-text text-muted">시술 종류를 선택해주세요.</small>
					</div>
					<div class="form-group text-start">
				    	<label for="booker_detail" class="form-label mt-4">Detail</label>
						<select class="form-select" id="booker_detail">
							<option>-</option>
							<option>예시 1</option>
							<option>예시 2</option>
							<option>예시 3</option>
					    </select>
				    	<small id="booker_detail_help" class="form-text text-muted">세부 시술 종류를 선택해주세요.</small>
					</div>
					
					<button type="submit" class="btn btn-outline-dark mt-4">Submit</button>
					<button type="reset" class="btn btn-outline-dark mt-4">Cancel</button>
				</fieldset>
			</form>
		</div>
	</div>
	
	<jsp:include page="Salon_Footer.jsp"/>
</body>
</html>