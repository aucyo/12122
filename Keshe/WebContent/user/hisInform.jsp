<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<title>other</title>
		<style>
			*{
    			box-sizing: border-box;
			}
			.headerf{
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
			.lbody{
				width: 40%;
  				float: left;
  				min-height: 900px;
    			padding-left: 230px;
    			padding-top: 60px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			.rbody{
				width: 60%;
    			float: left;
    			min-height: 400px;
    			max-height: 400px;
    			min-width: 200px;
				max-width: 700px;
    			padding-left: 100px;
    			padding-top: 15px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			.foot{
				min-width: 700px;
				max-width: 700px;
				min-height: 50px;
				max-height: 100px;
				padding-left: 0;
    			padding-top: 0;
				overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
				/*border: 1px solid red;*/
			}
			.button1{
				min-width: 200px;
				max-width: 200px;
				min-height: 50px;
				max-height: 100px;
				padding: 40px;
				position: absolute;
				top: 135px; left: 180px; bottom: 0; right: 0;
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
    	<div class="lbody">
    		<table class="table">
    			<caption>个人资料</caption>
    				<tr>
    					<td>姓  名：</td>
    					<td>${searchuser.name}</td>
    				</tr>
    				<tr>
    					<td>性  别：</td>
    					<td>${searchuser.sex}</td>
    				</tr>
    				<tr>
    					<td>职  称：</td>
    					<td>${searchuser.professionaltitle}</td>
    				</tr>
    				<tr>
    					<td>电子邮箱：</td>
    					<td>${searchuser.email}</td>
    				</tr>
    				<tr>
    					<td>电话号码：</td>
    					<td>${searchuser.phone}</td>
    				</tr>
    				<tr>
    					<td>研究方向：</td>
    					<td>${searchuser.researcharea}</td>
    				</tr>
    				<tr>
    					<td>所在学校：</td>
    					<td>${searchuser.school}</td>
    				</tr>
    				<tr>
    					<td>出生日期：</td>
    					<td>${searchuser.birthday}</td>
    				</tr>
    			
    		</table>
    	</div>
    	<div class="rbody">
    		<table class="table table-hover">
				<tr>
       				<th>导师姓名</th>
        			<th>导师邮箱</th>
        			<th>导师电话</th>
        			<th>查 看</th>
				</tr>
				<s:iterator value="mytcr" var="t">
					<tr>				
        				<td><s:property  value="name"/></td>
        				<td><s:property  value="email"/></td>
        				<td><s:property  value="phone"/></td>
        				<td><a href="hisInform?user.email=${user.email}&searchuser.email=<s:property value="#t.email"/>">查看详细信息</a></td>
				
					</tr>
				</s:iterator>
			</table>
    	</div>
    	<div class="rbody">
    		<table class="table table-hover">
				<tr>
       				<th>学生姓名</th>
        			<th>学生邮箱</th>
        			<th>学生电话</th>
        			<th>查 看</th>
				</tr>
				<s:iterator value="mystu" var="s">
					<tr>				
        				<td><s:property  value="name"/></td>
        				<td><s:property  value="email"/></td>
        				<td><s:property  value="phone"/></td>
        				<td><a href="hisInform?user.email=${user.email}&searchuser.email=<s:property value="#s.email"/>">查看详细信息</a></td>
					</tr>
				</s:iterator>
			</table>			
    	</div>
    	<div class="foot">
    		<a href="connect" target="_blank">联系我们</a>
    	</div>
    	<div class="button1">
    		<form action="addTcr" method="post">
				<input type="hidden" name="user.email" value="${user.email}">
				<input type="hidden" name="tcr.email2" value="${searchuser.email}">
				<button type="submit" class="btn btn-primary" style="width: 130px; height: 45px;">添加Ta成为导师</button>
			</form>
    	</div>
	</body>
</html>
