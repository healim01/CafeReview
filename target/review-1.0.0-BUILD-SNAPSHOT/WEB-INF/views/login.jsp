<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title>Insert title here</title> 

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
label { 
	display:inline-block;
}

label{ 
	width:200px
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

</style>

</head>

<body>

	<div style='width:100%;text-align:center;padding-top:100px'>
		<form method="post" action="loginOk">
			<div> <label>User ID : </label> 
			<input type='text' name='userid' /> </div> 
			<div><label>Password : </label>
			<input type='password' name='password' /></div> 
			
			<button type='submit'>login</button>
		</form>
	</div>
</body> 
</html>