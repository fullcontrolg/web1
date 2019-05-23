<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 함수 function </h2>
<script type="text/javascript">
	//<!--
	// 익명함수
	hap();
	function hap() {
		document.write( 5+2 + "<br>" );
	}  
	hap();
	
	// gop();
	var gop = function() {
		document.write( 5*2 + "<br>" );
	}
	gop();
	
	// 매개변수
	function cha( a=0, b=0 ) {
		document.write( a - b + "<br>" );
	}
	cha( 5, 2 );
	cha( 5 );
	cha( 5, 2, 7 );
	cha();
	// prompt( "값", 0 );
	
	// return 
	function div( a, b ) {
		return a/b;		
	}
	document.write( div(5, 2) + "<br>" );
	
	// 내장함수
	document.write( isNaN( 10 ) + "<br>" );
	document.write( isNaN( "10" ) + "<br>" );
	document.write( isNaN( "A" ) + "<br>" );
	
	document.write( parseInt( 5 / 2 ) + "<br>" );
	document.write( parseFloat( 6 / 2 ) + "<br>" );
	
	document.write( ("5 + 2") + "<br>" );
	document.write( eval("5 + 2") + "<br>" );
	
	// 문자열
	var a = "Hello JavaScript!!!";
	document.write( a.bold() + "<br>" );
	document.write( a.italics() + "<br>" );
	document.write( a.strike() + "<br>" );
	document.write( a + "hi".sub() + "<br>" );
	document.write( a + "hi".sup() + "<br>" );
	document.write( a.fontcolor("red") + "<br>" );
	document.write( a.fontsize(5) + "<br>" );
	
	// 시간
	var date = new Date();
	var now = date.getFullYear() + "년 "
			+ ( date.getMonth() + 1 ) + "월 "
			+ date.getDate() + "일 "
			+ date.getHours() + "시 "
			+ date.getMinutes() + "분 "
			+ date.getSeconds() + "초 "
			+ date.getDay();
	document.write( now + "<br>" );
	
	// 배열
	var m = new Array( "딸기", "배", "사과", "귤", "바나나" );
	for( var i in m) {
		document.write( m[i] + "<br>");
	}
	document.write( m + "<br>");
	document.write( m.length + "<br>");
	document.write( m.join() + "<br>");
	document.write( m.join("/") + "<br>");
	
	document.write( m.slice( ) + "<br>");
	document.write( m.reverse() + "<br>");
	document.write( m.sort() + "<br>");
	
	document.write( ( parseInt( Math.random() * 45 ) + 1 )+ "<br>" );
	
	
	
	//-->
</script>












