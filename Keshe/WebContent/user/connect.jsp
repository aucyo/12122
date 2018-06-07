<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<title>connect</title>
		<style>
			.header{
				width: 60%;
				height: 100%;
				min-width: 600px;
				max-width: 1000px;
				min-height: 100px;
				max-height: 100px;
				padding: 80px;
				overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
				/*border: 1px solid red;*/
			}
			
			.body{
				width: 90%;
  				float: left;
  				min-height: 300px;
    			padding-left: 300px;
    			padding-top: 100px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			body{
				background: url(https://up.enterdesk.com/edpic_source/71/34/0b/71340b8a930c69cf5e24329a2d6f5a8e.jpg);
			}
		</style>
		<script>
			function validateForm(){
				var x1=document.forms["myform"]["yname"].value;
				var x2=document.forms["myform"]["ymail"].value;
				var x3=document.forms["myform"]["ycomment"].value;
				var atpos=x2.indexOf("@");
				var dotpos=x2.lastIndexOf(".");
				if (x1==null||x1==""){
  					alert("请填写你的姓名");
  					return false;
  				}
				if (atpos<1||dotpos<atpos+2||dotpos+2 >= x2.length){
					alert("请填写有效的 e-mail地址");
  					return false;
				}
				if (x3==null||x3==""){
  					alert("请输入反馈内容！");
  					return false;
  				}
			}
		</script>
	</head>
	<body>
		<div class="body" align="left">
			<form name="myform" action="MAILTO:1041660590@qq.com" onsubmit="return validateForm()" method="post" enctype="text/plain">
				Name:<br>
				<input type="text" name="yname" placeholder="your name"><br>
				E-mail:<br>
				<input type="text" name="ymail" placeholder="your email"><br>
				Comment:<br>
				<textarea required rows="10" cols="30" name="ycomment" placeholder="your comment"></textarea><br>
				<input type="submit" value="Send">
				<input type="reset" value="Reset">
			</form>
		</div>
		<div class="header" align="left">
		<table>
		<tr>
		<td align="right">曹宇：</td><td>12122项目组组长、后端攻城狮、12122项目组吉祥物</td>
		</tr>
		<tr>
		<td align="right">张杰：</td><td>12122项目组组员、后端攻城狮、12122项目组清洁队队长</td>
		</tr>
		<tr>
		<td align="right">李孚昊：</td><td> 12122项目组组员、前端攻城狮、女装大佬萝莉控</td>
		</tr>
		<tr>
		<td align="right">周鹏：</td><td>12122项目组组员、前端攻城狮、川东扛把子</td>
		</tr>
		</table>
		</div>
		
	</body>
</html>
