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

button{ 
	background-color: #036635;
	color: white;
	font-size:20px
}

</style>

</head>

<body>

	<div style='width:100%;text-align:center;padding-top:100px'>
		<form method="post" action="loginOk">
			<img src='../resources/img/coffee.png' width="300"/>
			<div> <label>User ID : </label> 
			<input type='text' name='userid' /> </div> 
			<div><label>Password : </label>
			<input type='password' name='password' /></div> 
			
			<button type='submit'>login</button>
		</form>
	</div>
</body> 
</html>