(function (){
	$("document").ready(function(){
		var pageNum = $("#pageNum").val();
		var maxPageNum =$("#maxPageNum").val();
		var numPerPage = $("#numPerPage").val();
		var totalPage = Math.ceil(maxPageNum/numPerPage);
		
		var options={
		    currentPage:pageNum,
		    totalPages:totalPage,
		    
		    onPageClicked:function(e,originalEvent,type,page){
//		    	$('<input/>',{name:"pagenum",value:page,style:"display:none"}).appendTo($("#bidform"));
//		    	$("#bidform").submit();
		    }
		};
		
		$("#paginator").bootstrapPaginator(options);
	});
	
	
	function generateQuizList(listQuiz){
		$(".containQuizTr").remove();
		
		for(var i=0;i<listQuiz.size;i++){
			var quiz=listQuiz[i];
			var quizTr ='<tr class="containQuizTr">'+
		         '<td><input type="checkbox" class="containQuiz" value="quizId"></input></td>'
		        +'<td>quizName</td><td>quizInfo</td></tr>';	
			
			quizTr.replace("quizId", quiz.quizId);
			quizTr.replace("quizName", quiz.quizName);
		    quizTr.replace("quizInfo", quiz.quizInfo);
			quizTr.appendto($("#includeQuizBody"));
		}
	}
	
	
	$("#delQuiz").click(function(){
		var quizSetId = $("#quizsetid");
        var quizes=[];
        var i=0;
		$(".containQuiz").each(function(){
			if(this.checked == true){
				i++;
				quizes.push($(this).val());
			}
	   	}
		);
		if(i=0){
			alert("请至少选择一个试卷集");
			return;
		}else{	
			$.post(
			"/uunemo/modifysetdelquiz",
			{"quizSetId":quizSetId,"quizes":quizes},
		//返回成功
			function(data){			
		//若被选中，则删除
				$(".containQuiz").each(function(){
					if(this.checked == true){
						$(this).parent().parent().remove();
					}
			   	});
			}		
			);
			
		}
	});
	
	//查询系统中该set未包含的试卷
	$("#qryquizname").click(function(){
		var quizSetId = $("#quizsetid");
		var quizName = $("#quizname");	
		$.post(
	     "/uunemo/qryextraquiz",	
	     {"quizSetId":quizSetId,"quizName":quizName},
	     function(listQuiz){
	    	 //生成新的行
	    	 for(var i=0;i<listQuiz.size();i++){
	    		 var quiz = listQuiz[i];
	    		 var quizTr ='<tr class="qryedQuizTr">'+
		         '<td><input type="checkbox" class="qryedQuizChb" value="quizId"></input></td>';
	    		 +'<td>quizName</td><td>quizInfo</td></tr>';
	    		 
    		    quizTr.replace("quizId", quiz.quizId);
				quizTr.replace("quizName", quiz.quizName);
			    quizTr.replace("quizInfo", quiz.quizInfo);
			    //加到表body
				quizTr.appendto($("#qryedQuizBody"));
	    	 }
	     }
		);
	
	});
	
	
	//给试卷集添加试卷,前端直接添加，保存时才进数据库
	$("#addQuiz").click(function(){
		   var listQuiz=[]; 
		   var quiz={
				quizId:0,
				quizName:0,
				quizInfo:0
			};		
		   
	        var i=0;
			$(".qryedQuizChb").each(function(){
				if(this.checked == true){
					i++;
					quiz.quizId=$(this).val();
					quiz.quizName =$(this).next("td").text();
					quiz.quizInfo = $(this).next("td").next().text();
					listQuiz.push(quiz);
				}
		   	}
			);
			
			if(i=0){
				alert("请至少选择一条试卷记录");
				return;
			}else{			
			     //将先前的行移除
			    	$(".qryedQuizTr").remove();
				 //在试卷集下生成试卷列表
					generateQuizList(listQuiz);
			}				
	});
	
	$('#saveQuizSet').click(function(){
		var quizSetId = $("#quizsetid");
        var quizes=[];
        var i=0;
		$(".containQuiz").each(function(){
			if(this.checked == true){
				i++;
				quizes.push($(this).val());
			}
	   	}
		);
		if(i=0){
			alert("请至少选择一个试卷");
			return;
		}else{	
			$.post(
			"/uunemo/savequizset",
			{"quizSetId":quizSetId,"quizes":quizes},
		//返回成功
			function(data){			
		        alert('添加成功');
		        $('#saveQuizSet').atrr('disable','disable');
			}		
			);
			
		}
	});
	
	
})();