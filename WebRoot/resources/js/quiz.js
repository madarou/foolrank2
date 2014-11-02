(function (){
	WEBROOT="/uunemo";
	var QUESTIONID =0;
	var hasAnswer = false;
	
 	$(document).on("click","#letsbegin",function(){
		$(".quizinfo").hide();
		$(".takequiz").show();
		$("#nextquestion").click();
	});
 	
 	$(window).resize(function(){
 		if($(window).width()<600){
 			$("label span").hide();
 		}
 	})
	
	
	//取一道题
	$("#nextquestion").click(function(){
		$("#submit").show();
		$("#options").empty();
		$("#questionAnswer").hide();
		
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
					
						 QUESTIONID = question.questionId;
						 //题目内容
                         var str = question.questionContent;
                         //计算换行的个数，以动态设置textarea，居然只有\n没有\r,奇怪了
                         var length = str.split("\n").length-1;
                         
                         if(length > 4){
                        	 $("textarea").css("height",length*25+"px");
                         }else{
                        	 $("textarea").css("height","120px");
                         }
						 $("#questioncontent").text(str);
						 //选择题
						if(question.questionType=="option"){
							//选择题，若有解答则将解答赋给解答面板，
							
							 var options = question.options;
							 //首先生成input
							 for(var i=0;i< options.length;i++){
								 var id= "checkbox"+i;
								 $("#options").append("<label  class='optionlabel checkbox' for='"+id+"'><input id='"+id+"' type='checkbox'><textarea class='optiontext' id=textarea"+i+"></textarea></input></label>");
								 var textAreaId = "#textarea"+i;
								 //计算选项textarea的高度
								 var length = options[i].option.split("\n").length-1;
								 console.log("length",length);
			                        if(length > 0){
			                       	 $(textAreaId).css("height",50+length*20+"px");
			                        }else{
			                       	 $(textAreaId).css("height","40px");
			                        }
								 
								 $(textAreaId).text(options[i].option);
							 };
							 
							 
							  $(".checkbox, .radio").prepend("<span class='icon'></span><span class='icon-to-fade'></span>");
							  $(".checkbox, .radio").click(function(){
							        setupLabel();
							        //若checkbox被选择，则变色；否则恢复颜色
							        if($(this).hasClass("checked")){
							        	$(this).css("border-color","#2fe2bf");	
							        }else{
							        	$(this).css("border-color","#f2f2f2");
							        }
							  });
						//问答、编程题等
						}else{
							$("#submit").text("查看答案");
						}
				});
	})	
	
	
	$("#submit").click(function(){
		$("#submit").hide();
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
					if(data.questionType == "option"){
						for(var i=0;i<answer.length;i++){
							//匹配答案
							if(answer.charAt(i) != realanswer.charAt(i) && realanswer.charAt(i) == 0){
								//答案错误，提示错误
								var errorSelect= ".options label:eq("+i+")";
								$(errorSelect).css ("border-color","#FF0000");
								$(errorSelect).removeClass("checked");
								$(errorSelect).addClass("disabled");
							}else if(realanswer.charAt(i)==1){
							    //显示正确答案	
								var rightSelect = ".options label:eq("+i+")";
								$(rightSelect).css("border-color","#00FFFF");
								$(rightSelect).addClass("checked");
							}
						}
					}else{
                        //计算换行的个数，以动态设置textarea，居然只有\n没有\r,奇怪了
                        var length = realanswer.split("\n").length-1;
                        if(length > 20){
                       	 $("#questionAnswer").css("height",length*20+"px");
                        }else{
                       	 $("#questionAnswer").css("height","400px");
                        }
                        $("#questionAnswer").show();
						$("#questionAnswer").text(realanswer);
					}
					
				}
				
		);
	});
	
	
	$("#stop").click(function(){
		window.location.href="/";
	});
	

})();