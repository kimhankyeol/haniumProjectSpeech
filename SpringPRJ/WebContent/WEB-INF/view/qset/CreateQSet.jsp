<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- session.jsp 경로 설정 -->
<%@ include file="../User/session.jsp" %>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head>

<meta charset="UTF-8">
<title>질문 세트 만들기</title>
<!-- header.jsp 경로 설정 -->
<%@ include file="../header.jsp" %>
</head>
<body  data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">
	<!-- menu.jsp 경로설정 -->
	<%@ include file="../menu.jsp" %>
	<div class="app-content content container-fluid">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-card-center">질문 세트 등록</h4>
					<div class="heading-elements">
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						<form autocomplete="off" class="form" id="qForm" method="POST" action="/qset/SubmitQSet.do">
							<div class="form-body">

								<div class="form-group">
									<label for="qset_title">질문 세트 제목</label>
									<input type="text" id="qset_title" class="form-control" placeholder="질문 세트 제목" name="qset_title">
								</div>
								<div class="form-group">
									<label for="qset_desc">질문 세트 설명</label>
									<textarea id="qset_desc" rows="5" class="form-control" name="qset_desc" placeholder="질문 세트 설명"></textarea>
								</div>
								<div id="questionForm">
								<div class="form-group">
									<label>질문</label>
									<input type="text" hidden="hidden" name="content" id="content">
									<div class="input-group">
									<input type="text" class="form-control question" placeholder="1번째 질문" id="q0">
									<span class="input-group-addon btn btn-danger mr-1" onclick="delQuestion(this)">삭제</span>
									</div>
								</div>
								</div>
								<div style="float:right">
									<button type="button" class="btn btn-success mr-1" id="addBtn">
										<i class="icon-android-add"></i> 질문 추가
									</button>
								</div>
									
							</div>
							
							<div class="form-actions center">
								<button class="btn btn-primary" id="submitBtn">
									<i class="icon-check2"></i> 등록
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	
	<!-- footer.jsp 경로설정 -->
	<%@include file="../footer.jsp" %>
	<script>
	// 엔터로 등록 방지
	document.getElementById("qForm").onkeypress = function(e) {
		  var key = e.charCode || e.keyCode || 0;     
		  if (key == 13) {
		    e.preventDefault();
		  }
		}


	// 질문 갯수
	var qNum = 1;

	// 질문 추가 함수
	function addQuestion(){
		$("#questionForm").append('<div class="form-group"><div class="input-group"><input type="text" class="form-control question" placeholder="'
				+ ++qNum + '번째 질문"><span class="input-group-addon btn btn-danger mr-1" onclick="delQuestion(this)">삭제</span></div></div>');
	}
	$("#addBtn").click(function(){
		addQuestion();
	});

	function delQuestion(e){
		if(qNum==1){
			alert("최소 한 개의 질문은 필수입니다.");
			return;
		}
		let conf = confirm('삭제하시겠습니까?');
		if(conf==false){
			return;
		}
		qNum--;
		e.parentElement.parentElement.remove();
		var questions = document.getElementsByClassName('question');
		for(var i = 0; i < qNum; i++){
			var question = questions[i];
			question.id = "q" + (i+1);
			question.placeholder = (i+1) + "번째 질문"
			
		}
	}

	$("#submitBtn").click(function(){
		var questions = document.getElementsByClassName('question');
		var qList = [];
		for(var i = 0; i < qNum; i++){
			qList.push(questions[i].value);
		}
		var joinedQ = qList.join("`");
		$("#content").val(joinedQ);
		$("#qForm").submit();
	});
	</script> 
</body>
</html>