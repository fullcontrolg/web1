<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h2> 메인 페이지 </h2>

<form method="post" action="control.jsp">
	<table border="1">
		<tr>
			<th colspan="2">
				제품을 선택하세요
			</th>
		</tr>
		<tr>
			<th width="100"> 제품 </th>
			<td width="200">
				<input type="radio" name="product" value="1">텔레비젼<br>
				<input type="radio" name="product" value="2">디지털카메라<br>
				<input type="radio" name="product" value="3">노트북<br>
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="전송">
				<input type="reset" value="취소">
			</th>
		</tr>
	</table>
</form>