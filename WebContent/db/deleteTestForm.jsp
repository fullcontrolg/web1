<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> JDBC - delete - 입력 페이지 </h2>

<form method="post" action="deleteTest.jsp">
	<table border="1">
		<tr>
			<th> 아이디 </th>
			<td> <input type="text" name="id" maxlength="30"> </td>
		</tr>
		<tr>
			<th> 비밀번호 </th>
			<td> <input type="passwd" name="passwd" maxlength="30"> </td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="탈퇴">
				<input type="reset" value="취소">
			</th>
		</tr>
	</table>
</form>