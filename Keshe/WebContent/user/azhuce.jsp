<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<html>
<!--解决中文显示问题-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>注册页面</title>
</head>

<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script>
function check1(){
var value1 = document.getElementById("password1").value;
var value2 = document.getElementById("password2").value;
if(value1!=value2){
document.getElementById("info1").value="密码不一致请重新设置！";
document.getElementById("submit").disabled = false;
}
else{
document.getElementById("info1").value="密码一致！";
}
}
function check2(){
	if(document.getElementById("phonenum").value.length!=11){
document.getElementById("info2").value="手机号码长度不正确！";
document.getElementById("submit").disabled = false;
}
else{
document.getElementById("info2").value="手机格式正确！";
}
}
</script>
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url(file://C:/Users/周鹏/Desktop/struggle/image/003.jpg);
	repeat: no-repeat;
	background-attachment: fixed;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="file://C:/Users/周鹏/Desktop/struggle/image/003.jpg",
		sizingMethod="scale");
	-ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="file://C:/Users/周鹏/Desktop/struggle/image/003.jpg",
		sizingMethod="scale");
	background-size: cover;
	-moz-background-size: cover;
	-webkit-background-size: cover;
}

.box {
	padding-top: 0;
	margin-left: 450px;
	margin-right: 470px;
	height: 430px;
	border: #f9f8c4 solid 1px;
	background-color: #f9f8c4;
}

a:link {
	color: red
}

a:visited {
	color: blue
}

a:hover {
	color: green
}

a:active {
	color: yellow
}
</style>

<body>
	<h1 align="center">欢迎注册哈工大之家师承树！</h1>
	<div class="box">
  <div style="margin-top:0" class="well"><h1 align="center" class="text-muted">用户注册</h1></div>
		<form method="post" action="addUser">
			<table align="center">
				<tr>
					<td align="right">Email:</td>
					<td><input type="text" name="user.email" size="30"></td>
				</tr>
				<tr>
					<td align="right">密码:</td>
					<td><input type="password" id="password1" name="password" placeholder="8到20字符长度" size="30"></td>
				</tr>
				<tr>
					<td align="right">确认密码:</td>
					<td><input type="password" id="password2" name="user.password" size="30"></td>
					<td><input type="text" style="border:none;background-color:#f9f8c4" id="info1" readonly= "true" size="30"></td>
				</tr>
				<tr>
					<td align="right">姓名:</td>
					<td><input type="text"  name="user.name" size="30" onfocus="check1()"></td>
				</tr>
				<tr>
					<td align="right">手机号:</td>
					<td><input type="text" id="phonenum" name="user.phone" size="30"></td>
					<td><input type="text" id="info2" style="border:none;background-color:#f9f8c4" readonly= "true" size="30"></td>
				</tr>
				<tr>
					<td align="right">性别:</td>
					<td><select name="user.sex" onfocus="check2()">
							<option>男</option>
							<option>女</option>
					</select></td>
				</tr>
				<tr>
				<td align="right">出生日期</td>
				<td><input type="date" value="1926-08-17" name="user.birthday" size="30"></td>
				</tr>
				<tr>
					<td align="right">学校:</td>
					<td><select name="user.school">
						<option>--请选择学校--</option>
						<optgroup label="山东省">
							<option value="复旦大学">山东大学</option>
							<option value="哈尔滨工业大学(威海)">哈尔滨工业大学(威海)</option>
							<option value="德州大学">德州大学</option>
							<option value="中国海洋大学">中国海洋大学</option>
						</optgroup>
					</select></td>				
				</tr>
				<tr>
					<td align="right">职称:</td>
					<td><input type="text" name="user.professionaltitle" size="30"></td>
				</tr>
				<tr>
					<td align="right">研究领域:</td>
					<td><input type="text" name="user.researcharea" size="30"></td>
				</tr>
				<tr>
					<td></td>
					<td><button type="submit" id="submit">确认提交</button></td>

					<td><button type="reset">我再想想</button></td>
				</tr>
				<tr>
					<td></td>
					<td align="center"><a style="display: block" id="text"
						href="http://today.hitwh.edu.cn/" target="_blank"
						rel="noopener noreferrer nofollow">哈尔滨工业大学威海校内信息网</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>