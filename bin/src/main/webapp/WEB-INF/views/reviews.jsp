<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Cafe Review List</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
button {
	color: white; 
	font-weight: bold;
	text-align: center;
	padding: 5px;
  	background-color: #006bb3;
  	border:1px  #006bb3 solid;
  	border-radius: 7px;
}
button:hover {background-color: #003f69;}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/'+id;
	}
</script>
</head>
<body>
<h1> 한동대 교내 카페 리뷰 </h1>

<table id="list" width="90%">
<tr>
	<th> ID </th>
	<th> 카페 이름 </th>
	<th> 음료 이름 </th>
	<th> 음료 가격 </th>
	<th> 음료 별점 </th>
	<th> 리뷰 보기 </th>
	<th> 수정 </th>
	<th> 삭제 </th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.id}</td>
		<td>${u.cafe}</td>
		<td>${u.drink}</td>
		<td>${u.price}</td>
		<td>${u.star}</td>
		<td><a href="more/${u.id}">More</a>
		<td><a href="editpost/${u.id}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type = "button" onclick = "location.href='add'">새로운 음료 후기 작성</button>
</body>
</html> 