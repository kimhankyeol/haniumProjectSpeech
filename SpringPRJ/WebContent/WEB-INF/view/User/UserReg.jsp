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
		onsubmit="return validId&&validEmail&&validPw;">
		<div style="display: flex">
			<div>회원 아이디</div>
			<input type="text" name="id" id="id" pattern="[A-Za-z0-9_]{1,}"
				required title="영문, 숫자, 언더바(_)만 사용 가능합니다(숫자로 시작 불가)" value="">
			<button id="idCheck">중복확인</button>
			<span style="color: red" id="idChkMsg"></span>
		</div>
		<div style="display: flex">
			<div>회원 비밀번호</div>
			<input id="pw" type="password" name="passwd">
		</div>
		<div style="display: flex">
			<div>비밀번호 확인</div>
			<input id="pwConfirm" type="password" name="pwdChk">
			<span id="pwMessage"></span>
		</div>


		<div style="display: flex">
			<div>회원 이메일</div>
			<input type="email" name="email" id="email">
			<span id="emailMessage"></span>
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
	var validId = false;
	var validPw = false;
	var validEmail = false;
	
	
	
	// enables Submit button when all three values are valid
	function validCheck(){
		if(validId&&validPw&&validEmail){
			$("#submitBtn").removeAttr("disabled");
		}else{
			$("#submitBtn").attr("disabled", "disabled");
		}
	}
	
	// ID Validation function
	function validateId(){
		if($("#id").val() == ""){
			$("#idChkMsg").text("아이디를 입력해주세요.");
			$("#idChkMsg").attr("style", "color:red");
			$("#id").focus();
			
			validId = false;
		}else{
			var query = {id : $("#id").val()};
			
			$.ajax({
				url:"${pageContext.request.contextPath}/idCheck.do",
				type:"post",
				data:query,
				success:function(data){
					if(data==1){
						$("#idChkMsg").text("중복된 아이디입니다.");
						$("#idChkMsg").attr("style", "color:red");
						validId = false;
						$("#id").focus();
					}else{
						$("#idChkMsg").text("사용 가능한 아이디입니다.");
						$("#idChkMsg").attr("style", "color:green");
						$("#pw").focus();
						validId = true;
						
					}
					validCheck();
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					alert('status:' + XMLHttpRequest.status + ', status text: ' +
							XMLHttpRequest.statusText);
				}
			
				
			});
			
		}
	}
	
	
	
	// Password Validation function
	function validatePw(){
		var passwd = $("#pw").val();
		var pwdChk = $("#pwConfirm").val();
		if (passwd != pwdChk) {
			$("#pwMessage").text("암호가 일치하지 않습니다."); 
			$("#pwMessage").attr("style", "color:red"); 
			validPw = false;
			
		}else if (passwd == "") {
			$("#pwMessage").text("암호를 입력해주세요."); 
			$("#pwMessage").attr("style", "color:red"); 
			validPw = false;
			
		}
		
		else{
			$("#pwMessage").text("암호가 일치합니다."); 
			$("#pwMessage").attr("style", "color:green"); 
			validPw = true;
		}
		validCheck();
	}
	
	// Email validation function
	function validateEmail(){
		var email = $("#email").val();
		var mailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (email == "") {
			$("#emailMessage").text("이메일을 입력해주세요."); 
			$("#emailMessage").attr("style", "color:red"); 
			validEmail = false;
			
		}
		
		else if(!(mailFormat.test(email))){
			$("#emailMessage").text("유효하지 않은 이메일입니다."); 
			$("#emailMessage").attr("style", "color:red"); 
			validEmail = false;
		}else{
			$("#emailMessage").text(""); 
			$("#emailMessage").attr("style", "color:green");
			validEmail = true;
		}
		validCheck();
	}
	

	
	$("#email").keyup(function() {
		validateEmail();
	});
	
	$("#idCheck").click(function(){
		validateId();
	});
	
	$("#id").keyup(function(){
		var id = $("#id").val();
		var idFormat = /\W/g;
		
		if($("#id").val() == ""){
			$("#idChkMsg").text("아이디를 입력해주세요.");
			$("#idChkMsg").attr("style", "color:red");
		}else if(idFormat.test(id)){
			$("#idChkMsg").text("영문, 숫자, 언더바(_)만 가능합니다."); 
			$("#idChkMsg").attr("style", "color:red");
			$("#idCheck").attr("disabled", "disabled");
		}else{
			$("#idChkMsg").text("아이디 중복확인을 해주세요.");
			$("#idChkMsg").attr("style", "color:red");
			$("#idCheck").removeAttr("disabled");
		}
		$("#submitBtn").attr("disabled", "disabled");
		validId = false;
		
	})
	
	$("#pw").keyup(function(){
		validatePw();
	});
	$("#pwConfirm").keyup(function(){
		validatePw();
	});
	
</script>
</body>

</html>