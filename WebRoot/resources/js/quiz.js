(function (){
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
                         var str = question.questionContent;
                         
                         //计算换行的个数，以动态设置textarea，居然只有\n没有\r,奇怪了
                         var length = str.split("\n").length-1;
                         console.log("length........",length);
                         
                         if(length!=0){
                        	 $("textarea").css("height",length*20+"px");
                         }else{
                        	 $("textarea").css("height","80px");
                         }
						 $("#questioncontent").text(str);
						 //选项
						 var options = question.options;
						 //首先生成input
						 for(var i=0;i< options.length;i++){
							 var id= "checkbox"+i;
							/* $("#options").append("<li><input id='"+id+"' type='checkbox'></input><label for='"+id+"'>"+options[i].option+"</label></li>");*/
							 $("#options").append("<label class='optionlabel checkbox' for='"+id+"'><input id='"+id+"' type='checkbox'>"+options[i].option+"</input></label>");
						 };
						 
						  $(".checkbox, .radio").prepend("<span class='icon'></span><span class='icon-to-fade'></span>");

						  $(".checkbox, .radio").click(function(){
						        setupLabel();
						  });
						  setupLabel();
						  
//						  $("label").css("background-color","#ecf0f1");
						 //使用icheck，生成选项
//						 $('input').iCheck({
//							    checkboxClass: 'icheckbox_square-green',
//							    increaseArea: '20%', // optional
//							    hoverClass: 'hover',
//							    labelHover: true,
//							    labelHoverClass: 'hover',
//
//						 });
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
	

})();