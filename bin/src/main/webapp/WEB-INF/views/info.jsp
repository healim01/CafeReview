<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Cafe Review</title>
<style>
table{
	width: 80%;
}

#button {
	color: white; 
	font-weight: bold;
	text-align: center;
	padding: 5px;
  	background-color: #036635;
  	border:1px  #006bb3 solid;
  	border-radius: 7px;
}

#info th {	
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #036635;
  color: white;
  width: 20%;
}

#info td {
	border-bottom: 1px solid #444444;
    border-right: 1px solid #444444;
}

#info td.top {
	border-top: 1px solid #444444;
	border-bottom: 1px solid #444444;
    border-right: 1px solid #444444;
}

#button:hover {background-color: #036635;}

</style>
</head>
<body>
	<h1> 한동대 교내 카페 리뷰 </h1>
	<h2> 리뷰 </h2>
	
	<form:form commandName="reportVO" method="POST">
		<form:hidden path="id"/>
		<table id="more">
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