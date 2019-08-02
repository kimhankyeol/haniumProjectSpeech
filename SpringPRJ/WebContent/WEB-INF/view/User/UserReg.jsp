<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>두루마리 회원가입</title>
    <link rel="apple-touch-icon" sizes="60x60" href="resources/app-assets/images/ico/apple-icon-60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="resources/app-assets/images/ico/apple-icon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="resources/app-assets/images/ico/apple-icon-152.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/app-assets/images/ico/favicon.ico">
    <link rel="shortcut icon" type="image/png" href="resources/app-assets/images/ico/favicon-32.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/bootstrap.css">
    <!-- font icons-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/vendors/css/extensions/pace.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/colors.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
    <link rel="stylesheet" type="text/css" href="resources/app-assets/css/pages/login-register.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column  blank-page blank-page">
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
    <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1 box-shadow-2 p-0">
		<div class="card border-grey border-lighten-3 px-2 py-2 m-0">
			<div class="card-header no-border">
				<div class="card-title text-xs-center">
					<img src="resources/app-assets/images/logo/robust-logo-dark.png" alt="branding logo">
				</div>
				<h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>회원가입</span></h6>
			</div>
			<div class="card-body collapse in">	
				<div class="card-block">
					<form autocomplete="off" class="form-horizontal form-simple" name="joinForm" method="POST" action="/UserRegProc.do"
		onsubmit="return validity['id']&&validity['email']&&validity['pwConfirm'];">
						<fieldset class="form-group position-relative has-icon-left mb-1">
							<input type="text" class="form-control form-control-lg input-lg" id="id" name="id" placeholder="아이디">
							<button disabled="disabled" id="idCheck" class="btn btn-secondary btn-lg btn-block">아이디 중복확인</button>
							<div class="form-control-position">
							    <i class="icon-head"></i>
							</div>
							<div style="color: red; height:1.6em;" id="idMsg"></div>
						</fieldset>
						<fieldset class="form-group position-relative has-icon-left mb-1">
							<input type="email" class="form-control form-control-lg input-lg" id="email" name="email" placeholder="이메일" required>
							<button disabled="disabled" id="emailCheck" class="btn btn-secondary btn-lg btn-block">이메일 중복확인</button>
							<div class="form-control-position">
							    <i class="icon-mail6"></i>
							</div>
							<div id="emailMsg" style="height:1.6em"></div>
						</fieldset>
						<fieldset class="form-group position-relative has-icon-left mb-1">
							<input type="password" class="form-control form-control-lg input-lg" id="pw" name="passwd" placeholder="비밀번호" required style="margin-bottom:0">
							<div class="form-control-position">
							    <i class="icon-key3"></i>
							</div>
							<div style="height:1.6em"></div>
						</fieldset>
						<fieldset class="form-group position-relative has-icon-left mb-1">
							<input type="password" class="form-control form-control-lg input-lg" id="pwConfirm" placeholder="비밀번호 확인" required style="margin-bottom:0">
							<div class="form-control-position">
							    <i class="icon-key3"></i>
							</div>
							<div id="pwConfirmMsg" style="height:1.6em"></div>
						</fieldset>
						<fieldset class="form-group position-relative has-icon-left">
							<input type="text" class="form-control form-control-lg input-lg" id="interest" name="interest" placeholder="관심분야">
							<div class="form-control-position">
							    <i class="icon-star-full"></i>
							</div>
							<div style="color: red; height:1.6em;" id="idMsg"></div>
						</fieldset>
						<button type="submit" disabled="disabled" id="submitBtn" class="btn btn-primary btn-lg btn-block"><i class="icon-unlock2"></i> 가입하기</button>
					</form>
				</div>
				<p class="text-xs-center">이미 계정이 있으신가요? <a href="login.do" class="card-link">로그인</a></p>
			</div>
		</div>
	</div>
</section>
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->

    <!-- BEGIN VENDOR JS-->
    <script src="resources/app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src="resources/app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="resources/app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <!-- END PAGE LEVEL JS-->
    <!--  유효성 검사 -->
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
					$("#email").focus();
					
					
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
