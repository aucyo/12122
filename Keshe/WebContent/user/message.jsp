<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<title>message</title>
		<style>
			*{
    			box-sizing: border-box;
			}
			.headerf{
				width: 60%;
				height: 90%;
				min-width: 200px;
				max-width: 200px;
				min-height: 50px;
				max-height: 100px;
				padding: 40px;
				position: absolute;
				top: 50px; left: 1100px; bottom: 0; right: 0;
				/*border: 1px solid red;*/
			}
			.header{
				width: 60%;
				height: 90%;
				min-width: 600px;
				max-width: 1000px;
				min-height: 20px;
				max-height: 20px;
				padding: 10px;
				overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
				/*border: 1px solid red;*/
			}
			.body{
				width: 60%;
				height: 90%;
				min-width: 600px;
				max-width: 1000px;
				padding: 60px;
				overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
		</style>
		<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
		<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="headerf">
			<form action="myInform" method="post">
			<input type="hidden" name="user.email" value="${user.email}">
			<button type="submit" class="btn btn-default">返回主页</button>
			</form>
		</div>
		<div class="header">
    	</div>
    	<div class="body">
    		<h1>TA们请求添加您为导师</h1>
    		<p>----------------------------------</p>
    		<form>
    		<table class="table table-hover">
				<tr>
       				<th>姓名</th>
        			<th>邮箱</th>
        			<th>电话</th>
        			<th>学校</th>
        			<th>接受</th>
        			<th>不接受</th>
				</tr>
				<s:iterator value="searchedusers" var="r">
					<tr>				
        				<td><a href="hisInform?user.email=${user.email}&searchuser.email=<s:property value="#r.email"/>"> <s:property  value="#r.name"/> </a></td>
        				<td><s:property  value="#r.email"/></td>
        				<td><s:property  value="#r.phone"/></td>
        				<td><s:property  value="#r.school"/></td>
        				<td><a href="messageac?user.email=${user.email}&stu.email1=<s:property value="#r.email"/>">接受</a></td>
        				<td><a href="messagedn?user.email=${user.email}&stu.email1=<s:property value="#r.email"/>">不接受</a></td>
					</tr>
				</s:iterator>
			</table>
    		</form>
			
    	</div>
	</body>
</html>
