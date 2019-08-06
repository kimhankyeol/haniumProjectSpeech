// 엔터로 등록 방지
document.getElementById("questionForm").onkeypress = function(e) {
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
			+ ++qNum + '번째 질문" name="q' 
			+ qNum 
			+ '"><span class="input-group-addon btn btn-danger mr-1" onclick="delQuestion(this)">삭제</span>'
			+ '</div></div>');
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
		question.name = "q" + (i+1);
		question.placeholder = (i+1) + "번째 질문"
		
	}
}

$("#submitBtn").click(function(){
	var questions = document.getElementsByClassName('question');
	var qList = [];
	for(var i = 0; i < qNum; i++){
		qList.push(questions[i].value);
	}
	var joinedQ = qList.join("\t");
	$.post("qset/SubmitQSet.do",
			{
				qset_title: $("#qset_title").val(),
				qset_desc: $("#qset_desc").val(),
				content: joinedQ
			},
			function(data, status){
			    console.log("Data: " + data + "\nStatus: " + status);
			}
	);
});