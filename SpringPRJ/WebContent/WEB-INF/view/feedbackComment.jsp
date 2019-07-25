<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div style="width: auto; text-align:center; ">
	<%-- <c:if test="${sessionScope.userid != null }">  --%>
		<textarea rows="5" cols="80" id="commenttext"
		placeholder="들어본 후 회원님의 평가를 남겨주세요!"></textarea>
		<br>
		<button type="button" id="commentreg">댓글쓰기</button>
	<%-- </c:if> --%>
	</div>
	<div id="cont"></div>
	<button type="button" id="commentedit">수정</button>
	<button type="button" id="commentdel">삭제</button>
	
	<script>
	
	const selector = {
			commentReg:$('#commentreg'),		
			commentEdit:$('#commentedit'),
			commentDel:$('#commentdel')
	}
	
	$(function(){

		selector.commentReg.click(function(){
		commentreg();
		})
	});	
	
	function commentreg() {
		var commenttext=$("#commenttext").val(); //댓글내용
		var feedbackNo="${rDTO.feedback_no}"; //게시물번호
		var commentInfo = {"commenttext": commenttext, "feedback_no":feedbackNo};
		
		 console.log(commenttext);
		 console.log(feedbackNo);
		 console.log(commentInfo);
		 
		
		$.ajax({
			type: "post",
			url: "${path}/resFeedback/resFeedbackInsert.do",
			data: commentInfo,
			success: function(data){ //콜백함수
			//	var cm_obj = [];
			//	for (var i=0; )
				
				alert('댓글이 등록되었습니다!');
			}
		
		});
	}

</script>
</body>
</html>