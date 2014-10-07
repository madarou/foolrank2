(function (){
//	$('input').each(function(){
//	    var self = $(this),
//	      label = self.next(),
//	      label_text = label.text();
//	    label.remove();
//	    self.iCheck({
//	      checkboxClass: 'icheckbox_line-aero',
//	      radioClass: 'iradio_line-aero',
//	      insert: '<div class="icheck_line-icon"></div>' + '<span>'+label_text+'</span>'
//	    });
//	  });
	
	//开始做题，显示做题面板，并取出一道题
	
	var QUESTIONID =0;
	
	$(document).on("click","#letsbegin",function(){
		$(".quizinfo").hide();
		$(".takequiz").show();
		$("#nextquestion").click();
	});
	
	
	//取一道题
	$("#nextquestion").click(function(){
		$("#options").empty();
		$.post(WEBROOT+"/takeNextQuestion",
				{"quizId":$("#quizId").text()},
				function(question){
					//用户做的题与用户权限不符
					if(question.questionType == "error"){
						alert(question.questionContent);
						return false;
					}
					//用户做至最后一题
					if(question.questionContent == "end"){
						alert("恭喜你，已做到最后一题,跳到主页");
						window.location.assign("home");	
					    return false;
					}
					if(question.questionType=="option"){
						
						
						 QUESTIONID = question.questionId;
						 //题目内容
						
						 var htmlContent;
						 var ue = UE.getEditor('editor');
						
							ue.ready(function() {
							    //设置编辑器的内容
							    ue.setContent(question.questionContent);
							    //获取html内容
							    htmlContent = ue.getContent();
							   
							});
						
						 console.log("htmlContent",htmlContent);
							
						 $("#questioncontent").html(htmlContent);
						 //选项
						 var options = question.options;
						 //首先生成input
						 for(var i=0;i< options.length;i++){
							 var id= "icheckInput"+i;
							 $("#options").append("<li><input id='"+id+"' type='checkbox'></input><label for='"+id+"'>"+options[i].option+"</label></li>");
						 };
						 //使用icheck，生成选项
						 $('input').iCheck({
							    checkboxClass: 'icheckbox_square-green',
							    increaseArea: '20%', // optional
							    hoverClass: 'hover',
							    labelHover: true,
							    labelHoverClass: 'hover',

						 });
					}
				});
	})
	
	$("#submit").click(function(){
		var answer=""
		var questionId = $("#quesiontId").val();
		var inputs = $("li input");
		$("li input").each(function(){
		    if(this.checked){
		    	answer+="1";
		    }else{
		    	answer+="0";
		    }  
		});
		$.post(
				WEBROOT+"/answerquestion",
				{"quizId":$("#quizId").text(),"answer":answer,"questionId":QUESTIONID},
				function(data){
					//用户权限与题目不符
					if(data.error != null){
						alert(data.error);
						return false;
					}
					if(data == null){
						alert("不可重复提交");
						return false;
					}
					var realanswer = data.realanswer;
					for(var i=0;i<answer.length;i++){
						//匹配答案
						if(answer.charAt(i) != realanswer.charAt(i)){
							//答案错误，提示错误
							var errorSelect= "ul.options li:eq("+i+")";
							$(errorSelect).css ("background-color","red");
						}else if(answer.charAt(i)==realanswer.charAt(i)&&answer.charAt(i)==1){
						    //答案正确，且该答案本身为正确答案	
							var rightSelect = "ul.options li:eq("+i+")";
							$(errorSelect).attr("background-color","#66FFFF");
						}
						
					}
				}
				
		);
	});
	
//	//取出一道题，并生成答题页面
//	$(document).on("click","#nextquestion",function(){
//		//循环生成正确答案，并隐藏，设置为未选中
//		var optionnum= $("#optionnum").text();
//		var answer="";
//		var allinput = $('input');//选择所有的input，并循环检测
// 		for(var j=0;j<optionnum;j++){
//			if(allinput[j].checked){
//				answer+="1";
//			}
//			else{
//				answer+="0";
//			}
//			//iCheck不起作用		
//		}
//		
////		$('input').iCheck('uncheck');
//		$("li").hide();
//		console.log("quizId.........",$("#quizId").text());
//
//		$.post("/uunemo/takequiz",
//				{"quizId":$("#quizId").text(),"answer":answer},
//				function(list){
//				  var score = list[0];
//				  var question = list[1];
//			      var questionobj=eval(question);
//			      if(questionobj.questionContent=="end"){
//					  alert("恭喜你，已做到最后一题,跳到主页");
//					  window.location.assign("home");	
//				  }
//	 //如果是选择题，显示选择题界面，隐藏全部选项，再根据选项个数并对选项依次显示
//				  if(questionobj.questionType=="option"){ 
//					  $(".optionplane").show();
//					  $("#optionnum").text(questionobj.options.length);
//					  $("#questioncontent").text(questionobj.questionContent);
//					  for(var i=0;i<questionobj.options.length;i++){
//						  var myoption = "#"+"option"+i;
//						  $(myoption).show();
//						  $(myoption).find("span").text(questionobj.options[i].option);
//					  }
//				    }
//				  //处理score
//				  
//				  var scoreobj = eval(score);
//				  var userScore = scoreobj.userScore;
//				  var quizScore = scoreobj.quizScore;
//				  var ratio = userScore/quizScore;
//				  $("#scorebar").attr("width",ratio);
//				  $("#userscore").text(userScore);
//				  
//				  }
//		        );
//	});
})();