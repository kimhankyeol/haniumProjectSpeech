<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src=" https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>

$(function(){
	$('#kim22').click(function(){
		$('#id').css({
			"color":"red"
		})
		if($('#id').val()==""){
			return false
		}else if($('#pw').val()==""){
			return false
		}
	})
})

</script>
<body>
	<h2>홈</h2>
	<div style="display:flex">
		<div><img src="http://placehold.it/200x50"></div>
		<div>아이디</div>
		<input id="id" type="text" />
		<div>비밀번호</div>
		<input id="pw" type="text" />
		<button onclick="kim()">1111</button>
	</div>
	<div id="kim22">232323232</div>

<div onclick="kim1()">공지사항 이동</div>
<div onclick="kim2()">공지사항 등록</div>
<div onclick="kim3()">공지사항 삭제</div>
<div onclick="kim4()">공지사항 수정</div>
<div onclick="kim5()">공지사항 디테일</div>
<script>




</script>


<div onclick="pageMove.reg('notice','noticeReg')">공지사항 등록 </div>
<div onclick="pageMove.update('','feedBackReg')">공지사항 등록 </div>
<div onclick="pageMove.alert()">공지사항 222 </div>
<script>


	const pageMove = {
			reg : function(param1,param2){
				
				location.href = "/"+param1+"/"+param2+".do"
			},
			update : function(param1,param2){
				location.href = "/"+param1+"/"+param2+".do"
			},
			del : function(param1,param2){
				location.href = "/"+param.kim+"/"+param2+".do"
			},
			list : function(param1,param2){
				location.href = "/"+param1+"/"+param2+".do"
			},
			regParam:function(param1,param2,param3){
				
			},
			value: 1,
			alert: function(){
				alert('sad')
			}
	}
	
	pageMove=1

</script>


	<script>

function kim1(){
	
	alert('김한결 1입니다.')
	document.getElementById('id').style.color="blue"
	var result = 'data'
	kim2(result)
	}
	kim1=1 
function kim2(param){
	alert(param)
}

function kim4(){
	location.href = "/board/boardUpdate.do"
}

function kim5(){
	location.href = "/board/boardDetail.do"
}

	
	
	
	
	

function kim(){
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	//이메일 에 대한 유효성 검사   //  kimhk1030@naver.com
	if(id.value==""){
		
		alert("아이디가 입력 xxx")
		
		return false;
	}
	if(pw.value==""){
		alert("패스워드가 입력 xxx")
		return false;
	}
	location.href="/index.do"
}
</script>
</body>
</html>