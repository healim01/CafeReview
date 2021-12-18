<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Edit Cafe Review </title>
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
#edit th {	
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #036635;
  color: white;
  width: 20%;
}

#f1{
	border: none;
	padding-top: 12px;
	padding-bottom: 12px;
}

#f2 {
	border: none;
}

#button:hover {background-color: #036635;}
</style>
</head>
<body>
	<h1>한동대 교내 카페 리뷰</h1>
	<h2>리뷰 수정하기</h2>
	
	<form:form commandName="reportVO" method="POST" action="../editok">
		<form:hidden path="id"/>
		<table id="edit">
			<tr><th> 카페 이름 </th><td><form:input id="f1" path="cafe"/></td></tr>
			<tr><th> 음료 이름 </th><td><form:input id="f1" path="drinkt"/></td></tr>
			<tr><th> 음료 가격 </th><td><form:input id="f1" path="price"/></td></tr>
			<tr><th> 음료 별점 </th><td><form:input id="f1" path="star"/></td></tr>
			<tr><th> 음료 리뷰 </th><td><form:textarea id="f2" cols="100" rows="8" path="review"/></td></tr>
		</table>
		<br>
		<input id=button type="submit" value="수정하기"/>
		<input id=button type="button" value="취소하기" onclick="history.back()">
	</form:form>
</body>
</html>