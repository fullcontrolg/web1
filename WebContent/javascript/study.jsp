<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2> 구구단 문제 </h2>
<script type="text/javascript">
	// <!--
	var SIZE = 10;
	var m=[];
	for( var i=0; i<SIZE; i++ ) {
		m[i] = [];
		for( var j=0; j<4; j++ ) {
			m[i][0] = parseInt( Math.random() * 8 ) + 2;
			m[i][1] = parseInt( Math.random() * 9 ) + 1;
			m[i][2] = m[i][0] * m[i][1];
		}
	}
	document.write( "<form name='inputform'>" );
	document.write( "<table border='1'>" );
	for( var i=0; i<SIZE; i++ ) {
		document.write( "<tr>" );
		document.write( "<th>" + ( i+1 ) + "</th>" );
		document.write( 		"<th width='100'>" + m[i][0] + " * " + m[i][1] + "</th>" );
		document.write( 		"<th><input type='text' name='answer"+i+"'></th>");
		document.write( "</tr>" );	
	}
	document.write( "<tr> ");
	document.write( 		"<th colspan='3'>");
	document.write( 		"<input type='button' value='제출' onclick='score()'>&nbsp;&nbsp;&nbsp;");
	document.write( 		"<input type='reset' value='취소'>&nbsp;&nbsp;&nbsp;");
	document.write( 		"<input type='button' value='다시' onclick=\"location='study.jsp'\">");
	document.write( "</tr> ");
	document.write( "</table> ");
	document.write( "맞은개수 : <input type='text' name='cnt' readonly><br>" );
	document.write( "점수 : <input type='text' name='jumsu' readonly><br>" );
	document.write( "</form> ");
	
	function score() {
		var cnt=0;
		var jumsu=0;
		for( var i=0; i<SIZE; i++ ) {
			if( m[i][2] == eval( "inputform.answer" + i + ".value" ) ) {
				cnt ++;
				score += ( 100 / SIZE );
			}
		}
		inputform.cnt.value = cnt;
		inputform.jumsu.value = jumsu;
	}
	// -->
</script>