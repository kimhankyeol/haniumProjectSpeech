<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div style="width: 700px; text-align:center;">
	<%-- <c:if test="${sessionScope.userid != null }">  --%>
		<textarea rows="5" cols="80" id="commenttext"
		placeholder="들어본 후 회원님의 평가를 남겨주세요!"></textarea>
		<br>
		<button type="button" id="commentreg">댓글쓰기</button>
	<%-- </c:if> --%>
	</div>
	
	<script>
$(function(){
	$("#commentreg").click(function(){
		comment();
	})
});	
	
	function comment() {
		var commenttext=$("#commenttext").val(); //댓글내용
		var feedbackNo="${rDTO.feedback_no}"; //게시물번호
		var param = {"commenttext": commenttext, "feedback_no":feedbackNo};
		
		 console.log(commenttext);
		 console.log(feedbackNo);
		 console.log(param);
		 
		
		$.ajax({
			type: "post",
			url: "${path}/resFeedback/resFeedbackInsert.do",
			data: param,
			success: function(){ //콜백함수
				alert('댓글이 등록되었습니다!');
			}
		
		});
	}

</script>
</body>
</html>