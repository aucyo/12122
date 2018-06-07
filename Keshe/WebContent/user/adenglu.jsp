<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>登录界面</title>
</head>
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>

<script>
	function addemail() {
		var s = document.getElementById("username").value;
		var myselect = document.getElementById("select1");
		var index = myselect.selectedIndex;
		var n = s.indexOf("@");
		if (n == -1) {
			document.getElementById("username").value = s
					+ myselect.options[index].text;
		}
	}
	function jump() {
		window.open("WebContent/user/zhuce.html");
		alert(window.location);
	}
</script>
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url(file://C:/Users/周鹏/Desktop/struggle/image/002.jpg);
	repeat: no-repeat;
	background-attachment: fixed;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="file://C:/Users/周鹏/Desktop/struggle/image/002.jpg",
		sizingMethod="scale");
	-ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="file://C:/Users/周鹏/Desktop/struggle/image/002.jpg",
		sizingMethod="scale");
	background-size: cover;
	-moz-background-size: cover;
	-webkit-background-size: cover;
}

#box1 {
	padding: 0;
	margin-left: 500px;
	width: 500px;
	height: 350px;
	border: #f9f8c4 solid 1px;
	background-color: #f9f8c4;
}
</style>
<body>
	<h1 align="center">欢迎来到哈工大之家师承树！</h1>

	<div id="box1" class="container">
		<div style="margin-top: 0" class="well">
			<h1 align="center" class="text-muted">用户登录</h1>
		</div>
		<form method="post" action="denglu">
			<table align="center"
				style="border-collapse: separate; border-spacing: 20px;">
				<tr>
					<td align="right"><font color="red">*</font>登录账号:</td>
					<td><input type="text" placeholder="注册邮箱" id="username" name="user.email"></td>
					<td><select style="width: 120px;" id="select1">
							<option>@qq.com</option>
							<option>@163.com</option>
							<option>@sina.com</option>
							<option>@gmail.com</option>
					</select></td>
				</tr>
				<tr>
					<td align="right"><font color="red">*</font>密码：</td>
					<td><input type="password" placeholder="密码"
						name="user.password" onfocus="addemail()"></td>
				</tr>
				<tr>
					<td align="center"><button type="submit">登录</button></td>
				</tr>
				<tr>
				<td align="center"><button type="reset">我再想想</button></td>
				</tr>
			</table>
		</form>
		<form method="get" action="zhuce">
        	<div style="margin-left:63px">
		<button type="submit">注册</button>
		</div>
		</form>
	</div>
</body>
</html>