/**
 * 회원관리
 */
var iderror = "아이디를 입력하세요";
var passwderror = "비밀번호를 입력하세요";
var repasswderror = "비밀번호를 같게 입력하세요";
var nameerror = "이름을 입력하세요";
var juminerror = "주민등록번호를 입력하세요";
var telerror = "입력할거면 다 입력해라";


// 메인 페이지
function maincheck() {
	if( ! mainform.id.value ) {
		alert( iderror );
		mainform.id.focus();
		return false;
	} else if( ! mainform.passwd.value ) {
		alert( passwderror );
		mainform.passwd.focus();
		return false;
	}
}

//회원가입
function inputcheck() {
	if( ! inputform.id.value ) {
		alert( iderror );
		inputform.id.focus();
		return false;
	} else if( ! inputform.passwd.value ) {
		alert( passwderror );
		inputform.passwd.focus();
		return false;
	} else if( inputform.passwd.value != inputform.repasswd.value ) {
		alert( repasswderror );
		inputform.repasswd.focus();
		return false;
	} else if( ! inputform.name.value ) {
		alert( nameerror );
		inputform.name.focus();
		return false;
	} else if( inputform.jumin1.value.length < 6 || inputform.jumin2.value.length < 7 ) {
		alert( juminerror );
		inputform.jumin1.focus();
		return false;
	} else if( inputform.tel1.value || inputform.tel2.value || inputform.tel3.value ) {
		if( inputform.tel1.value.length < 3 || inputform.tel2.value.length < 3 || inputform.tel3.value.length < 4 ) {
			alert( telerror );
			inputform.tel1.focus();
			return false;
		}
	}
	
	// 1. null 인 경우			이동가능
	// 2. 직접입력일 경우		email1란에 @가 없으면 경고
	// 3. 선택입력일 경우		email2란에 @가 있으면 경고
	// 단 전화번호가 있건 없건 모두 가능해야 한다.
}

function nextjumin2() {
	if( inputform.jumin1.value.length == 6 ) {
		inputform.jumin2.focus();
	}
}
function nexttel1() {
	if( inputform.jumin2.value.length == 7 ) {
		inputform.tel1.focus();
	}
}
function nexttel2() {
	if( inputform.tel1.value.length == 3 ) {
		inputform.tel2.focus();
	}
}
function nexttel3() {
	if( inputform.tel2.value.length == 4 ) {
		inputform.tel3.focus();
	}
}
function nextemail1() {
	if( inputform.tel3.value.length == 4 ) {
		inputform.email1.focus();
	}
}












