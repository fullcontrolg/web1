<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type=text/css>
	table {
		overflow: hidden;
		color: black;
	}
	th {
		
		-webkit-transform:scale(1);
	    -moz-transform:scale(1);
	    -ms-transform:scale(1); 
	    -o-transform:scale(1);  
	    transform:scale(1);
	    -webkit-transition:.3s;
	    -moz-transition:.3s;
	    -ms-transition:.3s;
	    -o-transition:.3s;
	    transition:.3s;
	}
	th:hover {
		/* text-decoration: overline underline ; */
		/* cursor:progress; */
	    transform:scale(5.1); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대 */
	    -o-transform:scale(5.1); 
	    -moz-transform:scale(5.1);
	    -webkit-transform:scale(5.1);
	    transition: transform .35s;  
	    -o-transition: transform .35s;
	    -moz-transition: transform .35s;
	    -webkit-transition: transform .35s;
	    /* 마우스 오버시 이미지가 즉시 커지지 않고 30.5 second 의 시간에 걸쳐 커지는 애니메이션 효과*/
	}
</style>
<script type="text/javascript">
	// <!--
	document.write( "<h2>구구단</h2>");
	document.write( ' <table border="1"> ' );
		for( var i=0; i<10; i++ ) {
			if( i==0 ) {
				for( var j=2; j<10; j++ ) {
					document.write( " <th> " );
					document.write( j + "단" );
					document.write( " </th> " );
				}
			}
			else {
				document.write( " <tr> " );
				for( var j=2; j<10; j++ ) {
					document.write( " <th> " );
					document.write( j + " * " + i + " = " + i*j );
					document.write( " </th> " );
				}
				document.write( " </tr> " );
			}
			
		}
	document.write("</table>");
	 // -->
</script>

<script>
	// <!--
	document.write( "<h2>마름모</h2>");
	level = 5;
	count = 0;
	document.write( "<table border='1'>" );
	for( var i=-level; i<=level; i++ ) {
		document.write( "<tr onMouseOver='this.style.background=\"yellow\"' onMouseOut='this.style.background=\"#f00\"'>" );
		for( var j=-level; j<=level; j++ ) {
				document.write( "<th onMouseOver=this.style.background='red' onMouseOut=this.style.background='#0ff';>");
				if( Math.abs(i) + Math.abs(j) <= level ) {
				count++;
				document.write( count );
			}
			document.write( "</th>" );
		}
		document.write( "</tr>" );
	}
	document.write( "</table>" );

	// -->
</script>