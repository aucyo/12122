<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<title>change</title>
		<style>
			*{
    			box-sizing: border-box;
			}
			.header{
				width: 60%;
				height: 90%;
				min-width: 800px;
				max-width: 1000px;
				min-height: 100px;
				max-height: 100px;
				padding: 60px;
				overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
				/*border: 1px solid red;*/
			}
			.body{
				width: 90%;
  				float: left;
  				min-width: 500px;
  				max-width: 500px;
  				min-height: 900px;
    			padding-left: 0px;
    			padding-top: 0px;
    			overflow: auto;
				margin: auto;
				position: absolute;
				top: 400px; left: 90px; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
		</style>
		<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
		<script src="//cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script>
    		function validateForm(){
				var x1=document.forms["mytable"]["user.name"].value;
				var x2=document.forms["mytable"]["user.password"].value;
				var x3=document.forms["mytable"]["upasswordd"].value;
				var x4=document.forms["mytable"]["user.email"].value;
				var x5=document.forms["mytable"]["user.phone"].value;
				var x6=document.forms["mytable"]["user.researcharea"].value;
				var x7=document.forms["mytable"]["user.birthday"].value;
				var atpos=x4.indexOf("@");
				var dotpos=x4.lastIndexOf(".");
				if (x1==null||x1==""){
  					alert("请填写姓名");
  					return false;
  				}
				if (x2==null||x2==""){
  					alert("请填写密码");
  					return false;
  				}
				if (x2!=x3){
  					alert("密码不一致");
  					return false;
  				}
				if (atpos<1||dotpos<atpos+2||dotpos+2 >= x4.length){
					alert("请填写有效的 e-mail地址");
  					return false;
				}
				if (x5.length!=11){
					alert("请填写有效的手机号码");
  					return false;
				}
				var Num="0123456789";
				for (i=0;i<x5.length;i++){
					var c=x5.charAt(i);
					if (Number.indexOf(c)==-1){
						return false;
					}
				}
				if (x6==null||x6==""){
					alert("请填写研究领域，若是学生请填写学历阶段");
  					return false;
				}
				if (x7==null||x7==""){
					alert("请填写出生日期");
  					return false;
				}
			}
    	</script>
	</head>
	<body>
		<div class="header"></div>
    	<div class="body">
    		<form name="mytable" action="updateUser" onsubmit="return validateForm()" method="post">
    			<table class="table table-striped">
    				<caption>修改个人资料</caption>
    				<tr>
    					<td>姓  名：</td>
    					<td><input type="text" name="user.name" style="width:200px;" value="${user.name}"></td>
    				</tr>
    				<tr>
    					<td>密码：</td>
    					<td><input type="password" name="user.password" style="width:200px;" value="${user.password}"></td>
    				</tr>
    				<tr>
    					<td>确认密码：</td>
    					<td><input type="password" name="upasswordd" style="width:200px;" value="${user.password}"></td>
    				</tr>
    				<tr>
    					<td>性  别：</td>
    					<td><select name="user.sex" value="${user.sex}" style="width:200px;">
							<option value="男">男</option>
							<option value="女">女</option>
						</select></td>
    				</tr>
    				<tr>
    					<td>职  称：</td>
    					<td><select name="user.professionaltitle" value="${user.professionaltitle}" style="width:200px;">
							<option value="学生">学生</option>
							<option value="讲师">讲师</option>
							<option value="副教授">副教授</option>
							<option value="教授">教授</option>
						</select></td>
    					</tr>
    				<tr>
    					<td>电子邮箱：</td>
    					<td><input type="text" name="user.email" style="width:200px;" value="${user.email}"></td>
    				</tr>
    				<tr>
    					<td>电话号码：</td>
    					<td><input type="text" name="user.phone" style="width:200px;" value="${user.phone}"></td>
    				</tr>
    				<tr>
    					<td>研究方向：</td>
    					<td><input type="text" name="user.researcharea" style="width:200px;" value="${user.researcharea}"></td>
    				</tr>
    				<tr>
    					<td>所在学校：</td>
    					<td><select name="user.school" value="${user.school}" style="width:200px;">
							<optgroup label="山东省">
								<option value="山东大学">山东大学</option>
								<option value="哈尔滨工业大学(威海)">哈尔滨工业大学(威海)</option>
								<option value="德州大学">德州大学</option>
								<option value="中国海洋大学">中国海洋大学</option>
							</optgroup>
						</select></td>
    				</tr>
    				<tr>
    					<td>出生日期：</td>
    					<td><input type="date" name="user.birthday" style="width:200px;" value="${user.birthday}"></td>
    				</tr>
    			</table>
    			<input type="hidden" name="user.id" value="${user.id}">
    			<button type="submit" class="btn btn-default">保存所有修改</button>
    		</form>
    	</div>
	</body>
</html>
