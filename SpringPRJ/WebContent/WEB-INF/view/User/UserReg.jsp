<%@page import="poly.dto.UserDTO"%>
<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String dupId = CmmUtil.nvl((String) request.getAttribute("dupId"));
	/* 	UserDTO uDTO = (UserDTO)request.getAttribute("uDTO");
		String prevId = CmmUtil.nvl(uDTO.getId()); */
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
</head>
<body>
	<div>회원가입</div>
	<form name="joinForm" method="POST" action="/UserRegProc.do"
		onsubmit="return validity['id']&&validity['email']&&validity['pwConfirm'];">
		<div style="display: flex">
			<div>회원 아이디</div>
			<input type="text" name="id" id="id" pattern="[A-Za-z0-9_]{1,}"
				title="영문, 숫자, 언더바(_)만 사용 가능합니다(숫자로 시작 불가)" value="">
			<button id="idCheck" disabled="disabled">이이디 중복확인</button>
			<span style="color: red" id="idMsg"></span>
		</div>
		<div style="display: flex">
			<div>회원 비밀번호</div>
			<input id="pw" type="password" name="passwd">
		</div>
		<div style="display: flex">
			<div>비밀번호 확인</div>
			<input id="pwConfirm" type="password" name="pwdChk">
			<span id="pwConfirmMsg"></span>
		</div>


		<div style="display: flex">
			<div>회원 이메일</div>
			<input type="email" name="email" id="email">
			<button id="emailCheck" disabled="disabled">이메일 중복확인</button>
			<span id="emailMsg"></span>
		</div>
		<div style="display: flex">
			<div>관심업종</div>
			<input type="text" name="interest" maxlength="4" pattern="[0-9]{1,}">
		</div>
		<input disabled="disabled" type="submit" value="등록하기" id="submitBtn">
	</form>
	<script>
	// input validation script
	
	// ID validation
	// 세 값이 모두 참이어야 '가입하기' 버튼이 활성화됨
	var validity = {
		"id":false,
		"pwConfirm":false,
		"email":false
	};
	
	// enables Submit button when all three inputs are valid
	// 위의 세 값이 참인지 확인하는 함수
	function validCheckAll(){
		if(validity["id"]&&validity["pwConfirm"]&&validity["email"]){
			$("#submitBtn").removeAttr("disabled");
		}else{
			$("#submitBtn").attr("disabled", "disabled");
		}
	}
	
	// applies the result of validity check
	// 유효성 확인 결과를 위에서 정의한 validity에 적용하고, 정해진 메시지를 출력함
	// id : 입력 항목의 아이디
	// msg : 해당 항목 옆에 표시될 메시지 내용
	// valid : 유효성 검사 결과
	// focus : 해당 항목으로 커서가 돌아갈 지 지정함. 기본값은 false
	function validResult(id, msg, valid, focus=false){
		// 입력 항목 옆에 메시지를 출력함. 메시지가 표시되는 곳의 아이디는 입력항목의 아이디+Msg임.
		// 예) email 유효성 검사 메시시가 표시될 공간의 아이디는 emailMsg
		$("#"+id+"Msg").text(msg);
		
		// 값이 유효할 경우 포록색, 아닐 경우 빨간색으로 글씨색 표시
		$("#"+id+"Msg").attr("style", "color:"+(valid? "green":"red"));
		
		// 유효성 검사 결과를 위에서 정의한 validity 객체에 저장
		validity[id] = valid;
		
		// focus가 참일 경우 해당 입력항목으로 커서가 가게 한다
		if(focus){
			$("#"+id).focus();
		}
		
		// 입력 항목이 모두 유효한지 확인
		validCheckAll();
	}
	
	// ID Validation function
	function validateId(){
		var valid = false;
		var msg = "";
		var query = {id : $("#id").val()};
		
		$.ajax({
			url:"${pageContext.request.contextPath}/idCheck.do",
			type:"post",
			data:query,
			success:function(data){
				
				// 아이디 중복검사
				if(data==1){
					msg = "이미 사용 중인 아이디입니다.";
					$("#id").focus();
				}else{
					msg="사용 가능한 아이디입니다.";
					valid = true;
					$("#pw").focus();
					
					
				}
				
				// 유효성 검사 결과 적용
				validResult("id", msg, valid, !valid);
				
			},
			error: function(XMLHttpRequest, textStatus, errorThrown){
				alert('status:' + XMLHttpRequest.status + ', status text: ' +
						XMLHttpRequest.statusText);
			}
		
			
		});
	}
	
	function validateEmail(){

		var valid = false;
		var msg = '';
		var query = {email : $("#email").val()};
		$.ajax({
			url:"${pageContext.request.contextPath}/emailCheck.do",
			type:"post",
			data:query,
			success:function(data){
				
				if(data==1){
					msg = "이미 등록된 이메일입니다.";
					$("#email").focus();
				}else{
					msg="사용 가능한 이메일입니다.";
					valid = true;
				}
				validResult("email", msg, valid, !valid);
			},
			error: function(XMLHttpRequest, textStatus, errorThrown){
				alert('status:' + XMLHttpRequest.status + ', status text: ' +
					XMLHttpRequest.statusText);
			}
		});
	}
	// Password Validation function
	function validatePw(){
		var passwd = $("#pw").val();
		var pwdChk = $("#pwConfirm").val();
		var valid = false;
		var msg = '';
		if (passwd != pwdChk) {
			msg = "암호가 일치하지 않습니다."; 
			
		}else if (passwd == "") {
			msg = "암호를 입력해주세요.";
			
		}else{
			msg = "암호가 일치합니다.";
			valid = true;
			
		}
		validResult("pwConfirm", msg, valid);
	}
	
	// Email validation function

	
	
	$("#email").on('input', function() {
		var email = $("#email").val();
		var mailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var msg = "";
		if(email == ""){
			msg = "이메일을 입력해주세요."
			$("#emailCheck").attr("disabled", "disabled");
		}else if(!mailFormat.test(email)){
			msg = "유효하지 않은 이메일입니다."; 
			$("#emailCheck").attr("disabled", "disabled");
		}else{
			msg = "이메일 중복확인을 해주세요.";
			$("#emailCheck").removeAttr("disabled");
		}
		validResult("email", msg, false);
	});
	
	
	$("#idCheck").click(function(){
		validateId();
	});
	
	$("#emailCheck").click(function(){
		validateEmail();
	});
	
	$("#id").on('input', function(){
		var id = $("#id").val();
		var idFormat = /\W/g;
		var msg = "";
		if($("#id").val() == ""){
			msg = "아이디를 입력해주세요."
			$("#idCheck").attr("disabled", "disabled");
		}else if(idFormat.test(id)){
			msg = "영문, 숫자, 언더바(_)만 가능합니다."; 
			$("#idCheck").attr("disabled", "disabled");
		}else{
			msg = "아이디 중복확인을 해주세요.";
			$("#idCheck").removeAttr("disabled");
		}
		validResult("id", msg, false);
		
	})
	
	$("#pw").on('input', function(){
		validatePw();
	});
	$("#pwConfirm").on('input', function(){
		validatePw();
	});
	
</script>
</body>

</html>