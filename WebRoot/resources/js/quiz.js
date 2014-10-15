(function (){
	WEBROOT="/uunemo";
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
				{"quizName":$("#quizName").text()},
				function(question){
					//用户做的题与用户权限不符
					if(question.questionType == "error"){
						alert(question.questionContent);
						return false;
					}
					//用户做至最后一题
					if(question.questionContent == "end"){
						alert("恭喜你，已做到最后一题,题库正在不断完善中，将跳到主页");
						window.location.assign("home");	
					    return false;
					}
					if(question.questionType=="option"){
						
						 QUESTIONID = question.questionId;
						 //题目内容
                         var str = question.questionContent;
                         
                         //计算换行的个数，以动态设置textarea，居然只有\n没有\r,奇怪了
                         var length = str.split("\n").length-1;
                         
                         if(length!=0){
                        	 $("textarea").css("height",length*25+"px");
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
							 $("#options").append("<label  class='optionlabel checkbox' for='"+id+"'><input id='"+id+"' type='checkbox'>"+options[i].option+"</input></label>");
						 };
						 
						  $(".checkbox, .radio").prepend("<span class='icon'></span><span class='icon-to-fade'></span>");

						  $(".checkbox, .radio").click(function(){
						        setupLabel();
						        console.log("click checkbox............");
						        //若checkbox被选择，则变色；否则恢复颜色
						        if($(this).hasClass("checked")){
						        	$(this).css("background-color","#999999");	
						        }else{
						        	$(this).css("background-color","#ecf0f1");
						        }
						        
						  });
						  setupLabel();
						  
					}
				});
	})
	
	
		
		
	
	
	$("#submit").click(function(){
		var answer=""
		var questionId = $("#quesiontId").val();
		var inputs = $("li input");
		$(".options label input").each(function(){
		    if(this.checked){
		    	answer+="1";
		    }else{
		    	answer+="0";
		    }  
		});
		
		console.log("answer....",answer);
		$.post(
				WEBROOT+"/answerquestion",
				{"quizName":$("#quizName").text(),"answer":answer,"questionId":QUESTIONID},
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
					console.log("realanswer...",realanswer);
					for(var i=0;i<answer.length;i++){
						//匹配答案
						if(answer.charAt(i) != realanswer.charAt(i) && realanswer.charAt(i) == 0){
							//答案错误，提示错误
							var errorSelect= ".options label:eq("+i+")";
							$(errorSelect).css ("background-color","#FF0000");
						}else if(realanswer.charAt(i)==1){
						    //答案正确，且该答案本身为正确答案	
							var rightSelect = ".options label:eq("+i+")";
							$(rightSelect).css("background-color","#66FFFF");
						}
						
					}
				}
				
		);
	});
	
	
	$("#stop").click(function(){
		window.location.href=WEBROOT;
	});
	

})();