<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
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
if(value1==""&&value2==""){
document.getElementById("info4").value="密码不能为空！";
document.getElementById("info1").value="";
document.getElementById("submit").disabled = true;
}
else{
document.getElementById("info4").value="";
if(value1!=value2){
document.getElementById("info1").value="密码不一致请重新设置！";
document.getElementById("submit").disabled = true;
}
else{
if(value1.length>=8&&value1.length<=20){	
document.getElementById("info1").value="密码一致！";
document.getElementById("submit").disabled = false;
}
else{
	document.getElementById("info1").value="密码长度错误！";
	document.getElementById("submit").disabled = true;
}
}
}
}
function check2(){
	if(document.getElementById("phonenum").value.length!=11){
document.getElementById("info2").value="手机号码长度不正确！";
document.getElementById("submit").disabled = true;
}
else{
document.getElementById("info2").value="手机格式正确！";
document.getElementById("submit").disabled = false;
}
}
function check3(){

if(document.getElementById("email").value==""){
document.getElementById("info3").value="邮箱不能为空！";
document.getElementById("submit").disabled = true;
}
else{
	if(document.getElementById("email").value.indexOf("@")==-1){
		document.getElementById("info3").value="邮箱格式错误！";
		document.getElementById("submit").disabled = true;
	}
	else{
document.getElementById("info3").value=null;
document.getElementById("submit").disabled = false;
	}
}
}
</script>
<style>
body {
	margin: 0;
	padding: 0;
	background-image: url(image/003.jpg);
	repeat: no-repeat;
	background-attachment: fixed;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/003.jpg",
		sizingMethod="scale");
	-ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/003.jpg",
		sizingMethod="scale");
	background-size: cover;
	-moz-background-size: cover;
	-webkit-background-size: cover;
}

.box {
	padding-top: 0;
	margin-left: 450px;
	margin-right: 400px;
	height: 730px;
	border: #c0c0c0 solid 1px;
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
			<table align="center" class="table table-hover">
				<tr>
				<td>
				<div class="input-group input-group">
               <span class="input-group-addon">Email:</span>
             <input type="text" class="form-control" placeholder="用户名"  id="email" name="user.email"></div></td>
				<td><input type="text" style="border:none;background-color:#f9f8c4" id="info3" readonly= "true" size="20" class="text-warning"></td>
				</tr>

				<tr>
				<td>
				<div class="input-group input-group">
                <span class="input-group-addon" >密码:</span>
                <input type="password" class="form-control" id="password1" name="password" placeholder="8到20字符长度" onfocus="check3()">
                </div></td>
				<td><input type="text" style="border:none;background-color:#f9f8c4" id="info4" readonly= "true" size="20" class="text-warning"></td>
				</tr>

				<tr>
				<td>
				<div class="input-group input-group">
                <span class="input-group-addon">确认密码:</span>
                <input type="password" id="password2" name="user.password" class="form-control">
                </div></td>
					<td><input type="text" style="border:none;background-color:#f9f8c4" id="info1" readonly= "true" size="20" class="text-warning"></td>
				</tr>
				<tr>
				<td>
				<div class="input-group input-group">
                <span class="input-group-addon">姓名:</span>
               <input type="text"  name="user.name" onfocus="check1()" class="form-control">
               </div>
				</td>
				</tr>

				<tr>
				<td>
				<div class="input-group input-group">
                <span class="input-group-addon">手机号:</span>
               <input type="text" id="phonenum" name="user.phone"  class="form-control">
               </div>
				</td>
				<td><input type="text" id="info2" style="border:none;background-color:#f9f8c4" readonly= "true" size="20" class="text-warning"></td>
				</tr>

				<tr>
				<td>
				<div class="input-group input-group">
                <span class="input-group-addon">性别:</span>
                <select name="user.sex" class="form-control" onfocus="check2()">
							<option>男</option>
							<option>女</option>
					</select>
               </div>
			    </td>
				</tr>

				<tr>
				<td>
				<div class="input-group input-group">
                <span class="input-group-addon">出生日期:</span>
               <input type="date" value="1926-08-17" name="user.birthday"  class="form-control">
               </div>
				</td>
				</tr>

				<tr>
				<td>
                <div class="input-group input-group">
                <span class="input-group-addon">学校:</span>
               <input type="text" name="user.school" class="form-control">
               </div>
				</td>
				</tr>

				<tr>
				<td>
				 <div class="input-group input-group">
                <span class="input-group-addon">职称:</span>
               <input type="text" name="user.professionaltitle" class="form-control">
               </div>
				</td>
				</tr>

				<tr>
				<td>
				 <div class="input-group input-group">
                <span class="input-group-addon">研究领域:</span>
               <input type="text" name="user.researcharea" class="form-control">
               </div>
				</td>
				</tr>

				<tr>
				<td align="center"><button type="submit" class="btn btn-success"id="submit"><span class="glyphicon glyphicon-log-in text-success"></span>确认提交</button></td>
					<td align="center"><button  type="reset"  class="btn btn-warning" type="reset"><span class="glyphicon glyphicon-repeat text-warning"></span>我再想想</button></td>
				</tr>
				<tr>
					<td align="center"><a  class="label label-info" style="display: block" id="text"
						href="http://today.hitwh.edu.cn/" target="_blank"
						rel="noopener noreferrer nofollow"><font size="3px">哈尔滨工业大学威海校内信息网</font></a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>