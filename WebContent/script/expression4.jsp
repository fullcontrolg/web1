<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h2> 구구단 문제</h2>
<script type="text/javascript">
	// <!-- 
	function rand_ten(){
		return parseInt( ( Math.random() * 9 ) + 1 );
	}
	function gop( a, b ){
		return a * b;
	}
	function Quiz() {
		this.a = rand_ten();
		this.b = rand_ten();
		document.write( 'a : ' + this.a +'   ');
		document.write( 'b : ' + this.b +'   ');
		this.question = this.a + ' * ' + this.b;
		document.write( 'question : ' + this.question +'   ');
		this.answer = eval( this.a ) * eval( this.b );
		document.write( 'answer : ' + this.answer + '<br>' );
		this.getQuestion = function() {
			return this.question;
		}
		this.getAnswer = function() {
			return this.answer;
		}
	}
	function result(){
		
	}
	document.write('	<input type="button" name="requestion" onclick="regugu()">');
	document.write('	<form method="post" action="">');
	document.write('		<table border="1">');
								var answer = [];
								var input = [];
								for( var i=1; i<=10; i++ ) { 	
									var gugu = new Quiz();
									answer[i] = gugu.getAnswer();
	document.write("				<tr>");
	document.write("					<th>");
	document.write(						i + '번' );
	document.write( gugu.getQuestion() );
	document.write("					</th>");
	document.write("							<td>");
	document.write('								<input type="text" name="input[ ]">');
	document.write("							</td>");
	document.write("				</tr>");
								}
	document.write("			<tr colspan="2">");
	document.write("				<th>");
	document.write('					<input type="button" value="제출" onclick="result()" >');
	document.write('					<input type="button" value="취소" onclick="reset()" >');
	document.write("				</th>");
	document.write("			</tr>");
	document.write("		</table> ");
	document.write("	</form>");
	-->
</script>


