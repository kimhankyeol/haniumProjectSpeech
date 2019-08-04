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
	<c:if test="${sessionScope.userid != null }"> 
		<textarea rows="5" cols="80" id="commenttext"
		placeholder="들어본 후 회원님의 평가를 남겨주세요!"></textarea>
		<br>
		<button type="button" id="commentreg">댓글쓰기</button>
	</c:if>
	</div>
	<div id="commentlist"></div>
	
</body>	
<script>
	const selector = {
			commentText:$('#commenttext'),
		//	commentNum:$('#commentNum'),
			commentReg:$('#commentreg'),		
			commentEdit:$('#commentedit'),
			commentDel:$('#commentdel'),
			commentList:$('#commentlist'),
			
	}
	console.log("current feedback : " + <%=feedback_no%>);
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
		
		});
	}
	
	//function commentdel(commentNo) {
	//	if( 세션의 사용자번호 == /*댓글 작성자 번호*/)
	//	var result = confirm('댓글을 삭제하시겠습니까?');
	//	if(result===true) {
		//	//댓글 삭제 처리
			//$.ajax({
				//type: "post",
		//		url: "${path}/resFeedback/resFeedbackDelete.do",
		//		data: {
		//			"commentNo" : 
		//		}
	//			error: function(){
	//				alert("통신 실패");
	//			},
	//			success: function
	//		})
	//	} else {
			// 이전 화면으로 돌아가 놔두기.
	//	}
//	}
	

</script>

</html>