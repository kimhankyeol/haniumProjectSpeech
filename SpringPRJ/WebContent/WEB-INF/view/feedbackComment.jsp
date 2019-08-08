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
	  
		<textarea rows="5" cols="80" id="commenttext"
		placeholder="들어본 후 회원님의 평가를 남겨주세요!"></textarea>
		<br>
		<button type="button" id="commentreg">댓글쓰기</button>
	
	</div>
	<div id="commentlist"></div>
	
</body>	
<script>
	const selector = {
			commentText:$('#commenttext'),
			commentReg:$('#commentreg'),		
			commentList:$('#commentlist'),
			},
			
		confirm = {
				reg: function(){
					alert('후기를 남겼습니다!');
				},
				
				edit: function(){
					alert('후기를 수정했습니다.');
				},
				del: function(){
					alert('후기를 삭제합니다.');
				}
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
			commentReg();
		});
		
	});
	
	
	//댓글작성
	function commentReg() {
		var commenttext=selector.commentText.val(); //댓글내용
		var feedbackNo= <%=feedback_no %>; //게시물번호
		var commentInfo = {
				"commenttext": commenttext,
				"feedbackNo":feedbackNo,
				"regNo": <%=userNo%>
				};
		
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
				confirm.reg();
				commentListPage();
			}
		
		});
	}
	
	function commentEdit(commentNo){
		console.log(commentNo);
		var edit_cont = '';
		//일단 따라써보고 실험해보기.
		
		edit_cont += '<div>';
		edit_cont += '<div>';
		edit_cont += '<textarea id="commentTextEdit" rows="5" cols="80">';
		edit_cont += $('#commentContent'+commentNo).html(); //작성된 댓글 내용을 불러와... 바닐라js의 .innerHTML과 비슷
		edit_cont += '</textarea>';
		edit_cont += '<div style="text-align: right;">';
		edit_cont += '<button type="button" style="cursor:pointer;" onclick="commentListPage();">취소</button>';
		edit_cont += '<span> </span>'
		edit_cont += '<button type="button" style="cursor:pointer;" onclick="commentEditProc('+commentNo+');">수정</button>';
		edit_cont += '</div>';
		edit_cont += '</div>';
		edit_cont += '</div>';
		
		$('#'+commentNo).html(function(){return edit_cont});
	}
	
	function commentEditProc(commentNo) {
		if($('#commentTextEdit').val() =='') {
			alert('댓글 수정 실패');
			return false;
		}
		
		console.log(commentNo);
		
		$.ajax({
			type: "post",
			url: "/resFeedback/resFeedbackEdit.do",
			data: {
				"commentNo" : commentNo,
				"commenttext": $('#commentTextEdit').val(),
				"regNo": <%=userNo%>
			},
			error: function(){
				alert('통신실패');
			},
			success: function(data){
				console.log(data);
				commentListPage();
				confirm.edit();
			}
		})
		
	}
	
	function commentDel(commentNo) {
		
		var result = confirm('댓글을 삭제하시겠습니까?');
			if(result) {
			//댓글 삭제 처리
				$.ajax({
					type: "post",
					url: "${path}/resFeedback/resFeedbackDelete.do",
					data: {
						"commentNo" : commentNo
					},
					error: function(){
						alert("통신 실패");
					},
					success: function(data){
						console.log(data);
						commentListPage();
						confirm.del();
				}
					
			})
		}
	}

</script>

</html>