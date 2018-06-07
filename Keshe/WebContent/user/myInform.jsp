<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- 
<s:head theme="xhtml"/>
<sd:head parseContent="true" extraLocales="UTF-8"/>
 -->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		
		<title>我的信息</title>
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
				max-height: 250px;
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
			.rbody1{
				width: 60%;
    			float: left;
    			min-height: 400px;
    			max-height: 400px;
    			min-width: 200px;
				max-width: 700px;
    			padding-left: 60px;
    			padding-top: 15px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			.rbody2{
				width: 60%;
    			float: left;
    			min-height: 400px;
    			max-height: 400px;
    			min-width: 200px;
				max-width: 1000px;
    			padding-left: 60px;
    			padding-top: 15px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			.rubody3{
				width: 20%;
    			float: left;
    			min-height: 100px;
    			max-height: 100px;
    			padding-left: 20px;
    			padding-top: 15px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			.rubody1{
				width: 20%;
    			float: left;
    			min-height: 100px;
    			max-height: 100px;
    			padding-left: 150px;
    			padding-top: 15px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			.rubody2{
				width: 20%;
    			float: left;
    			min-height: 100px;
    			max-height: 100px;
    			padding-left: 70px;
    			padding-top: 15px;
    			overflow: auto;
				margin: auto;
				position: static;
				top: 0; left: 0; bottom: 0; right: 0;
    			/*border: 1px solid red;*/
			}
			.foot{
				width: 60%;
				height: 90%;
				min-width: 900px;
				max-width: 900px;
				min-height: 50px;
				max-height: 100px;
				padding-left: 400px;
    			padding-top: 20px;
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
			<form action="message" method="post">
			<input type="hidden" name="user.email" value="${user.email}" />
			<button type="submit" class="btn btn-info">查看消息</button>
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
    	<form>
    		<table class="table">
    			<caption>个人资料</caption>
    				<tr>
    					<td>姓  名：</td>
    					<td>${user.name}</td>
    				</tr>
    				<tr>
    					<td>性  别：</td>
    					<td>${user.sex}</td>
    				</tr>
    				<tr>
    					<td>职  称：</td>
    					<td>${user.professionaltitle}</td>
    				</tr>
    				<tr>
    					<td>电子邮箱：</td>
    					<td>${user.email}</td>
    				</tr>
    				<tr>
    					<td>电话号码：</td>
    					<td>${user.phone}</td>
    				</tr>
    				<tr>
    					<td>研究方向：</td>
    					<td>${user.researcharea}</td>
    				</tr>
    				<tr>
    					<td>所在学校：</td>
    					<td>${user.school}</td>
    				</tr>
    				<tr>
    					<td>出生日期：</td>
    					<td>${user.birthday}</td>
    				</tr>
    			
    		</table>
    		<input type="hidden" name="user.email" value="${user.email}">
    		<button type="submit" class="btn btn-default" formaction="editUser">修改个人资料</button>
	    	</form>
    	</div>
    	<div class="rbody1">
    		<table class="table table-hover">
				<tr>
       				<th>导师姓名</th>
        			<th>导师邮箱</th>
        			<th>导师电话</th>
        			<th>查 看</th>
        			<!-- 
        			<th>师生关系开始时间</th>
        			<th>师生关系结束时间</th>
        			 -->
				</tr>
				<s:iterator value="mytcr" var="s">
				<tr>				
        			<td><s:property  value="#s.name"/></td>
        			<td><s:property  value="#s.email"/></td>
        			<td><s:property  value="phone"/></td>
        			<td><a href="hisInform?user.email=${user.email}&searchuser.email=<s:property value="#s.email"/>">查看详细信息</a></td>
				</tr>
				</s:iterator>
			</table>
    	</div>
    	<div class="rbody2">
    	<form action="search">
    		<table class="table table-hover">
				<tr>
       				<th>学生姓名</th>
        			<th>学生邮箱</th>
        			<th>学生电话</th>
        			<th>查 看</th>
        			<th>操 作</th>
        			<!-- 
        			<th>师生关系开始时间</th>
        			<th>师生关系结束时间</th>
        			 -->
				</tr>
				<s:iterator value="mystu" var="a">
					<tr>			
        			<td><s:property  value="#a.name"/></td>
        			<td><s:property  value="#a.email"/></td>
        			<td><s:property  value="phone"/></td>
        			<!-- 
        			<td><input type="hidden" id="hi1" name="user.email" value="${user.email}"> </td>
        			<td><input type="hidden" id="hi2" name="stu.email1" value="${a.email}"> </td>
        			
        			<td><input type="submit" formaction="delStu" value="删除该学生"> </td>
        			<td><input type="submit" formaction="addStuEnd" value="添加下方日期为师生关系结束时间"> </td>
        			
        			<td><input type="submit"  value="ok" size="10"></td>
        			 -->
        			 
        			<td><a href="hisInform?user.email=${user.email}&searchuser.email=<s:property value="#a.email"/>">查看详细信息</a></td>
        			<td><a href="delStu?user.email=${user.email}&stu.email1=<s:property value="#a.email"/>">删除该学生</a></td>
            		
            		</tr>
				</s:iterator>
			</table>
    	</form>		
    	</div>
    	<div class="rubody1"></div>
    	<div class="rubody2">
    		<!-- 
    		<label for="end">请选择日期：</label>
			<input type="date"  name="tdate" size="25">
			<s:set var="adate" value="tdate"> </s:set> 
    		 <sd:datetimepicker label="picktime" value="today" type="date" name="stu.end"  language="utf-8"></sd:datetimepicker>
			
    		 -->
    		 </div>
    	<div class="rubody3"></div>
    	<div class="foot">
    		<a href="connect" target="_blank">联系我们</a>
    	</div>
	</body>
</html>
