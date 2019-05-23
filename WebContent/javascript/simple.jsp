<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 간단한 JavaScript </h2>

<script type="text/javascript">
	// <!--
	document.write( 10 + "<br>" );	
	document.write( 10.5 + "<br>" );
	document.write( '대한민국' + "<br>" );
	document.write( "우리나라" + "<br>" );
	document.write( true + "<br>" );
	
	document.write( typeof(10) + "<br>" );	
	document.write( typeof(10.5) + "<br>" );
	document.write( typeof('대한민국') + "<br>" );
	document.write( typeof("우리나라") + "<br>" );
	document.write( typeof(true) + "<br>" );
	
	// alert( "정신차려~~" );
	// var str = prompt( "값 : " );
	// document.write( "값 : " + str );
	// print();
	// open();
	// var yn = confirm( "닫을거냐 말거냐?" );
	// document.write( yn );
	// if( yn ) close();
	
	var a = 10;
	var a = 20;
	document.write( "a : " + a + "<br>" );
	
	// 강제형변환
	document.write( typeof( 10 ) + "<br>" );
	document.write( typeof( "10") + "<br>" );
	document.write( typeof( String( 10 ) ) + "<br>" );
	document.write( typeof( Number( "10" ) ) + "<br>" );	
	
	// 형변환
	document.write( 5 + 2 + "<br>");
	document.write( "5" + 2 + "<br>");
	document.write( "5" + "2" + "<br>");
	document.write( "5 + 2" + "<br>");
	
	document.write( 5 - 2 + "<br>");
	document.write( "5" - 2 + "<br>");
	document.write( "5" - "2" + "<br>");
	document.write( "5 - 2" + "<br>");	
	
	document.write( 5 / 2 + "<br>");
	
	// 일치연산자
	if( 0 == false ) document.write( "같다<br>" );
	if( 0 == "" ) document.write( "같다<br>" );
	if( "" == false ) document.write( "같다<br>" );
	if( null == undefined ) document.write( "같다<br>" );
	
	if( 0 === false ) document.write( "같다<br>" );
	else document.write( "다르다<br>" );
	if( 0 === "" ) document.write( "같다<br>" );
	else document.write( "다르다<br>" );
	if( "" === false ) document.write( "같다<br>" );
	else document.write( "다르다<br>" );
	if( null === undefined ) document.write( "같다<br>" );
	else document.write( "다르다<br>" );
	
	// 짧은 조건문
	1 && document.write( "true &&<br>" );
	0 && document.write( "false &&<br>" );
	1 || document.write( "true ||<br>" );
	0 || document.write( "false ||<br>" ); 
	
	// 배열
	// C			int m[3];
	//				int m = { 10, 20, 30 }
	// Java			int m[] = new int[3];
	//				int m = { 10, 20, 30 }
	// JavaScript	var m = []; 
	//				var m = [ 10, 20, 30 ];				{} JSON 표기법
	
	var m = [];
	m[0] = 10; 
	m[1] = 20;
	m[3] = 30;
	m[4] = "ABC";
	for( var i=0; i<m.length; i++ ) {
		document.write( m[i] + "<br>" );
	}
	
	// switch ~ case
	var score = 95;
	switch( true ) {
	case score >= 90 : document.write( "A학점<br>" ); break;
	case score >= 80 : document.write( "B학점<br>" ); break;
	case score >= 70 : document.write( "C학점<br>" ); break;
	case score >= 60 : document.write( "D학점<br>" ); break;
	default : document.write( "F학점<br>" ); break;
	}
	
	var now = new Date();
	var hour = now.getHours();
	switch( true ) {
	case hour <= 12 : document.write( "오전<br>" ); break;
	case hour <= 18 : document.write( "오후<br>" ); break;
	case hour <= 24 : document.write( "밤<br>" ); break;
	}
	
	// 반복문
	var w = [ "사과", "딸기", "바나나" ];
	for( var i=0; i<w.length; i++ ) {
		document.write( w[i] + "<br>" );		
	}
	for( var i in w ) {
		document.write( w[i] + "<br>" );
	}
	
	//-->
</script>









