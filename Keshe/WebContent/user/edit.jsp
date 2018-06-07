<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<html>

<body>

	<form action="updateUser" method="post">
		<table align="center" border="1" cellspacing="0">
			<tr>
				<td>Email:</td>
				<td><input type="text" name="user.eamil" value="${user.email}">
				</td>
			</tr>
			<tr>
				<td>姓名:</td>
				<td><input type="text" name="user.name" value="${user.name}">
				</td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="user.password" value="${user.password}"></td>
			</tr>
			<tr>
				<td>手机号:</td>
				<td><input type="text" name="user.phone" value="${user.phone}">
				</td>
			</tr>
			<tr>
				<td>性别:</td>
				<td><input type="text" name="user.sex" value="${user.sex}">
				</td>
			</tr>
			<tr>
				<td>出生日期:</td>
				<td><input type="text" name="user.birthday" value="${user.birthday}">
				</td>
			</tr>
			<tr>
				<td>学校:</td>
				<td><input type="text" name="user.school" value="${user.school}">
				</td>
			</tr>
			<tr>
				<td>职称:</td>
				<td><input type="text" name="user.professionaltitle" value="${user.professionaltitle}">
				</td>
			</tr>
			<tr>
				<td>研究领域:</td>
				<td><input type="text" name="user.researcharea" value="${user.researcharea}">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="hidden"
					name="user.id" value="${user.id}"> <input type="submit"
					value="submit"></td>
			</tr>
		</table>

	</form>

</body>
</html>