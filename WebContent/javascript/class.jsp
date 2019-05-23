<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 클래스 </h2>

<script type="text/javascript">
	//<!--
	// class Person {}
	function Person( name=null, age=0, tel=null ) {
		this.name = name;
		this.age = age;
		this.tel = tel;
		this.getName = function() {
			return this.name;
		}
		this.getAge = function() {
			return this.age;
		}
		this.getTel = function() {
			return this.tel;
		}		
	}
	var kim = new Person( "김유신", 30, "1111-2222" );
	document.write( "이름 : " + kim.getName() + "<br>" );
	document.write( "나이 : " + kim.getAge() + "<br>" );
	document.write( "전화번호 : " + kim.getTel() + "<br>" );
	
	function User( name=null, age=0, tel=null ) {
		this.name = name;
		this.age = age;
		this.tel = tel;
		this.getName = getName;
		this.getAge = getAge;
		this.getTel = getTel;
	}
	function getName() {
		return this.name;
	}
	function getAge() {
		return this.age;
	}
	function getTel() {
		return this.tel;
	}
	
	var lee = new User( "이순신", 40, "2222-3333" );
	document.write( "이름 : " + lee.getName() + "<br>" );
	document.write( "나이 : " + lee.getAge() + "<br>" );
	document.write( "전화번호 : " + lee.getTel() + "<br>" );
	
	function Customer( name=null, age=0, tel=null ) {
		this.name = name;
		this.age = age;
		this.tel = tel;
	}
	Customer.prototype.getName = function() {
		return this.name;
	}
	Customer.prototype.getAge = function() {
		return this.age;
	}
	Customer.prototype.getTel = function() {
		return this.tel;
	}
	var hong = new Customer( "홍길동", 20, "3333-1111" );
	document.write( "이름 : " + hong.getName() + "<br>" );
	document.write( "나이 : " + hong.getAge() + "<br>" );
	document.write( "전화번호 : " + hong.getTel() + "<br>" );
	
	var park = new Object();
	park.name = "박혁거세";
	park.age = 40;
	park.tel = "2222-3333";
	park.getName = function() {
		return this.name;
	}
	park.getAge = function() {
		return this.age;
	}
	park.getTel = function() {
		return this.tel;
	}
	document.write( "이름 : " + park.getName() + "<br>" );
	document.write( "나이 : " + park.getAge() + "<br>" );
	document.write( "전화번호 : " + park.getTel() + "<br>" );
	
	
	
	
	
	
	
	
	//-->
</script>














