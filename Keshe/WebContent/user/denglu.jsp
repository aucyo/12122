<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
function addemail(){
  var s=document.getElementById("username").value;
  var myselect=document.getElementById("select1");
  var index=myselect.selectedIndex ;
  var n=s.indexOf("@"); 
  if(s==""){
  alert("请输入账号!");
  }
  else{
  if(n==-1){
 document.getElementById("username").value=s+myselect.options[index].text;}
}
}
</script>
<style>
body{
    margin: 0;
    padding: 0;
    background-image: url(image/002.jpg);
    repeat: no-repeat;
    background-attachment:fixed;
    filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/002.jpg", sizingMethod="scale");
    -ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="image/002.jpg", sizingMethod="scale");
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
}
#box1{
   padding:0;
   margin-left:500px;
   width:500px;
   height:350px;
   border:#c0c0c0 solid 1px;
   background-color:#f9f8c4;
}
</style>
 <body>
 <h1 align="center">欢迎来到哈工大之家师承树！</h1>

  <div id="box1" class="container">
  <div style="margin-top:0" class="well"><h1 align="center" class="text-muted">用户登录</h1></div>
  <form method="post" >
 <div class="input-group" style="margin-top:20px">
 <div class="input-group-addon"><font color="red">*</font>登录账号:</div>
 <input type="text" class="form-control" placeholder="注册邮箱" id="username" name="user.email">
    <div class="input-group-btn">
        <select class="form-control" style="width:120px;" id="select1">
          <option>@qq.com</option>
          <option>@163.com</option>
          <option>@sina.com</option>
          <option>@gmail.com</option>
        </select>
		</div>
    </div>

<div style="margin-top:40px" class="input-group">
<span class="input-group-addon"><font color="red">*</font>密码：</span>
<input type="password" class="form-control" placeholder="密码" aria-describedby="basic-addon1" id="password"  name="user.password" onfocus="addemail()">
</div>

<!--栅格布局-->
<div style="margin-top:40px" class="row">
<div class="col-xs-4" align="center"><button type="submit" formaction="denglu" class="btn btn-success"><span class="glyphicon glyphicon-log-in text-success"></span>登录</button></div>
<div class="col-xs-4"><button  type="reset" class="btn btn-warning" type="reset"><span class="glyphicon glyphicon-repeat text-warning"></span>我再想想</button></div>
<div class="col-xs-4">
<button type="submit" formaction="zhuce" class="btn btn-primary"><span class="glyphicon glyphicon-new-window text-success ">注册</button>
</div>
</div>
</form>
 </div>

<p align="center"><video height="500px" width="500px" controls="controls">
<source src="" type="video/mp4"></video></p>
 </body>
</html>
