(function (){
		
var numPerPage = 10;
var nowPage =0;  //用于变量传递



//将所有的记录条数放到序列尾返回,为接口一致，记为question的point字段
function searchQuestion(pageNum){
	var quizContent = $("#quizContent").val();
	
	$.post(
	  "/uunemo/searchquiz",
	  {"quizContent":quizContent,"pageNum":pageNum},
	  function(listQuiz){
		  $('.includeQuizTr').remove();
		  var i=0;
		  for(;i<listQuiz.length-1;i++){
			    var quiz=eval(listQuiz[i]);
			   
				var quizTr = $('<tr/>',{class:"includeQuizTr"});
				var quizTd1 = $('<td/>');
				quizTd1.appendTo(quizTr);
				$('<input/>',{type:"checkbox",class:"chk_quiz",value: quiz.quizId}).appendTo(quizTd1);		
				var tdElement = '<td>quizName</td>'.replace("quizName", quiz.quizName);			
				$(tdElement).appendTo(quizTr);
				quizTr.appendTo($("#tableBody"));	
		  };
		 //最后一个quiz中 的quizInfo字段存的是总记录条数
		 var recordNum = eval(listQuiz[i]).quizInfo;
		 
		  var options={
				    currentPage:pageNum,
				    totalPages:Math.ceil(recordNum/numPerPage),
				    onPageClicked:function(e,originalEvent,type,page){
				    	nowPage = page;
				    	pageNum = page;
				    	searchQuestion(page);
				    }
				};
		  
		  $("#paginator").bootstrapPaginator(options);
	  }	  
	);
}	
	

$("#btn_search").click(function(){
	searchQuestion(1);
});	
	
	
	
$("#createquiz").click(function(){
//		使用bootstrap的对话框
		$('#editQuizModal').modal({	
			show:true,
			remote:"editquiz"
		});
});


$("#editquiz").click(function(){
	var quizId ='';
	var i=0;
	$(".chk_quiz").each(function(){
		if(this.checked == true){
			i++;
			quizId = $(this).val();
		};
   	});
	if(i==0){
		alert('请选择一条记录');
	}else if(i>1){
		alert('只能选择一条记录');
	}else{
		$.post(
		'/uunemo/editthequiz',	
		{"quizId":quizId},
		function(quiz){
			$('#editQuizModal').modal({	
				show:true,
				remote:"editquiz"
			});
			
			//initialQuestion(question);
		}
		);
	}
	
	
});

$("#delquiz").click(function(){
	var i=0;
	var quizs=[];
	$(".chk_quiz").each(function(){
		if(this.checked == true){
			i++;
			quizs.push($(this).val());
		}
   	}
	);
	if(i=0){
		alert("请至少选择一个试题");
		return;
	}else{	
		$.post(
		"/uunemo/delquizs",
		{"quizs":$.toJSON(quizs)},
	//返回成功
		function(data){			        
	      //若被选中，则删除,同时更新当前页面
			alert('删除成功');
			searchQuestion(nowPage);
		}		
		);
	}
});




})();