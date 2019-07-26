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
	<div style="width: auto; text-align:center; ">
	<%-- <c:if test="${sessionScope.userid != null }">  --%>
		<textarea rows="5" cols="80" id="commenttext"
		placeholder="들어본 후 회원님의 평가를 남겨주세요!"></textarea>
		<br>
		<button type="button" id="commentreg">댓글쓰기</button>
	<%-- </c:if> --%>
	</div>
	<div id="commentlist">댓</div>
	
</body>	
<script>
	const selector = {
			commentText:$('#commenttext'),
			commentReg:$('#commentreg'),		
			commentEdit:$('#commentedit'),
			commentDel:$('#commentdel'),
			commentList:$('#commentlist')
	}
	
	//댓글불러오기
	function commentListPage() {
		$.ajax({
			type: "get",
			url:
		"${path}/resFeedback/resFeedbackListPage.do",
			data: {
				"feedbackNo" : <%=feedback_no %>
			},
			success: function(data){
				selector.commentList.html(data);
			}
		});
	};
	
	commentListPage();
	
	
	$(function(){
		selector.commentReg.click(function(){
			commentreg();
		});
		
	});
	
	
	//댓글작성
	function commentreg() {
		var commenttext=selector.commentText.val(); //댓글내용
		var feedbackNo= <%=feedback_no %>; //게시물번호
		var commentInfo = {
				"commenttext": commenttext,
				"feedbackNo":feedbackNo,
				"regNo": <%=userNo%>};
		
		 console.log(commenttext);
		 console.log(feedbackNo);
		 console.log(commentInfo);
		 
		
		$.ajax({
			type: "post",
			url: "${path}/resFeedback/resFeedbackInsert.do",
			data: commentInfo,
			error: function(){
				alert("통신실패");
			},
			success: function(data){ //콜백함수
				selector.commentText.val(function()
						{return ''}); //댓글란에 작성한 내용 지우기.
				commentListPage();
			}
		
		})
	}
	
	

</script>

</html>