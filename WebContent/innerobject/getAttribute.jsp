<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 내장객체 - 내장 객체 영역 - 확인 페이지 </h2>

request : <%=request.getAttribute( "id" )%> <br>
session : <%=session.getAttribute( "id" )%> <br>
application : <%=application.getAttribute( "id" )%> <br>