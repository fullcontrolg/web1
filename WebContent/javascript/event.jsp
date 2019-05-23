<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> Event / DOM </h2>

<script type="text/javascript">
	// <!--
	var m = [ "red", "yellow", "green", "blue", "lime" ];
	function clock() {
		var date = new Date();
		document.title = date.getHours() + " : "
					+ date.getMinutes() + " : "
					+ date.getSeconds();
		// setTimeout( "clock()", 1000 );			
		// document.bgColor = m[ date.getSeconds() % m.length ];
	}
	setInterval( "clock()", 1000 );
	
	function setColor() {
		window.document.inputform.color.focus();
		document.bgColor = inputform.color.value;
		inputform.color.value = "";
	}
	function calc() {
		var a = inputform.a.value;
		var b = inputform.b.value;
		if( isNaN( a ) || isNaN( b ) ) {
			alert( "숫자만 입력해" );
			return;
		}
		inputform.result.value = eval( a ) + eval( b );
	}
	function myhobby() {
		var result = document.getElementById( "result" );
		var msg = "당신의 취미는 ";
		for( var i=0; i<inputform.hobby.length; i++) {
			if( inputform.hobby[i].checked ) {
				msg += inputform.hobby[i].value + "&nbsp;";
			}
		}
		msg += "입니다.<br>";
		result.innerHTML = msg;
	}
	function tosite() {
		var url = inputform.site.options[ inputform.site.selectedIndex ].value;
		location.href = url;
	}
	
	
	//-->
</script>

<body onload="clock()">
	<div id="result"></div>
	<br>
	<form name="inputform">
		<select name="site">
			<option value="http://www.naver.com"> 네이버 </option>
			<option value="http://www.daum.net"> 다음 </option>
			<option value="http://www.google.co.kr"> 구글 </option>
			<option value="http://www.nate.com"> 네이트 </option>
		</select>
		<input type="button" value="이동" onclick="tosite()">
		<br> <br>	
		
		취미 : <input type="checkbox" name="hobby" value="등산"> 등산
			<input type="checkbox" name="hobby" value="낚시"> 낚시
			<input type="checkbox" name="hobby" value="운동"> 운동
			<input type="checkbox" name="hobby" value="게임"> 게임
			<input type="button" value="선택" onclick="myhobby()">
			<br>	
		
		
		<br>
		덧셈 : <input type="text" name ="a"> + <input type="text" name = "b">
			= <input type="text" name="result" readonly> 
			<input type="button" value="확인" onclick="calc()"> <br>
		
		
		
		<br>
		<a onmouseover="document.bgColor='red'" onmouseout="document.bgColor='white'">
			빨간색</a> <br>
		<a onmouseover="document.bgColor='blue'" onmouseout="document.bgColor='white'">
			파란색</a> <br>
		<a onmouseover="document.bgColor='yellow'" onmouseout="document.bgColor='white'">
			노란색</a> <br>
		<a onmouseover="document.bgColor='green'" onmouseout="document.bgColor='white'">
			초록색</a> <br>
	
		<br>
		배경색 : <input type="text" name="color">
			<input type="button" value="선택" onclick="setColor()"> 
			<br> 
	
	</form>
</body>













