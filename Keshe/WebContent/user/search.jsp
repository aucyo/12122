<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<title>search</title>
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
				max-height: 190px;
				padding: 60px;
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
				padding: 20px;
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
		<div class="header">
			<form role="form-inline" class="form" action="searchUser" method="post">
				<input type="text" name="searchuser.name" style="height:40px; width:300px;" placeholder="请输入搜索目标姓名" />
					<select name="searchuser.school" style="height:40px;">
						<option>--请选择学校--</option>
						<optgroup label="山东省">
							<option value="山东大学">山东大学</option>
							<option value="哈尔滨工业大学(威海)">哈尔滨工业大学(威海)</option>
							<option value="德州大学">德州大学</option>
							<option value="中国海洋大学">中国海洋大学</option>
						</optgroup>
					</select>
				<input type="hidden" id="hi2" name="user.email" value="${user.email}">
				<button style="height:40px;" type="submit" class="btn btn-default">搜索</button>
			</form>
    	</div>
    	<div class="body">
    		<table class="table table-hover">
				<tr>
       				<th>姓名</th>
        			<th>邮箱</th>
        			<th>电话</th>
        			<th>学校</th>
        			<th>查看</th>
        			<th>操作</th>
				</tr>
				<s:iterator value="searchedusers" var="r">
					<tr>				
        				<td><s:property  value="#r.name"/></td>
        				<td><s:property  value="#r.email"/></td>
        				<td><s:property  value="#r.phone"/></td>
        				<td><s:property  value="#r.school"/></td>
            			<td><a href="hisInform?user.email=${user.email}&searchuser.email=<s:property  value="#r.email"/>">查看详细信息</a></td>
						<td><a href="addTcr?user.email=${user.email}&tcr.email2=<s:property  value="#r.email"/>">添加为导师</a></td>
					</tr>
				</s:iterator>
			</table>
    	</div>
	</body>
</html>
