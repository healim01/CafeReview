<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Cafe Review</title>
<style>
@font-face {
    font-family: 'ImcreSoojin';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body {
	font-family: 'ImcreSoojin';
}

table{
	width: 80%;
}

button {
	padding: 5px;
  	background-color: #036635;
  	border:1px  #036635 solid;
  	border-radius: 10px;
  	color: white; 
	font-weight: bold;
	text-align: center;
}

th {	
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #036635;
  color: white;
  width: 20%;
}


#button:hover {
	background-color: #00a352;
	border-radius: 10px;
}

</style>
</head>
<body>
	<h1> 한동대 교내 카페 리뷰 </h1>
	
	<form:form commandName="reviewVO" method="POST">
		<form:hidden path="id"/>
		<table id="info">
			<tr><th> 카페 이름 </th><td class="top">${reviewVO.cafe}</td></tr>
			<tr><th> 음료 이름 </th><td>${reviewVO.drink }</td></tr>
			<tr><th> 음료 가격 </th><td>${reviewVO.price }</td></tr>
			<tr><th> 음료 별점 </th><td>${reviewVO.star }</td></tr>
			<tr><th> 음료 리뷰 </th><td>${reviewVO.review }</td></tr>
		</table>
		<br>
		<input id=button type="button" value="돌아가기" onclick="history.back()">
	</form:form>
</body>
</html>