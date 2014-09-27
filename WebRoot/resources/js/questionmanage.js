(function (){
		
var numPerPage = 10;
var nowPage =0;  //用于变量传递


function loadEditquestion()
{
	// 先把b.js调入
	var body = document.getElementsByTagName('body');
	var testScript = document.createElement('script');
	testScript.src = 'resources/js/editquestion.js';
	testScript.type = 'text/javascript';
	body[0].appendChild(testScript);
	 // 现在就可以调用b.js中的test()函数了
}


$(document).ready(function(){
	loadEditquestion();
});


//将所有的记录条数放到序列尾返回,为接口一致，记为question的point字段
function searchQuestion(pageNum){
	var questionContent = $("#ipt_search").val();
	
	$.post(
	  "/uunemo/searchquestion",
	  {"searchText":questionContent,"pageNum":pageNum},
	  function(listQuestion){
		  $('.includeQuestionTr').remove();
		  var i=0;
		  for(;i<listQuestion.length-1;i++){
			    var question=eval(listQuestion[i]);
			   
				var questionTr = $('<tr/>',{class:"includeQuestionTr"});
				var questionTd1 = $('<td/>');
				questionTd1.appendTo(questionTr);
				$('<input/>',{type:"checkbox",class:"chk_question",value: question.questionId}).appendTo(questionTd1);		
				var tdElement = '<td>questionContent</td>'.replace("questionContent", question.questionContent);			
				$(tdElement).appendTo(questionTr);
				questionTr.appendTo($("#tableBody"));	
		  };
		 var recordNum = eval(listQuestion[i]).point;
		 
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
	
	
	
$("#createquestion").click(function(){
//		使用bootstrap的对话框
		$('#editQuestionModal').modal({	
			show:true,
			remote:"editquestion"
		});
});


$("#editquestion").click(function(){
	var questionId ='';
	var i=0;
	$(".chk_question").each(function(){
		if(this.checked == true){
			i++;
			questionId = $(this).val();
		};
   	});
	if(i==0){
		alert('请选择一条记录');
	}else if(i>1){
		alert('只能选择一条记录');
	}else{
		$.post(
		'/uunemo/editthequestion',	
		{"questionId":questionId},
		function(question){
			$('#editQuestionModal').modal({	
				show:true,
				remote:"editquestion"
			});
		//引用editquestion中的方法
		//initialQuestion(question);
		}
		);
	}
	
	
});

$("#delquestion").click(function(){
	var i=0;
	var questionts=[];
	$(".chk_question").each(function(){
		if(this.checked == true){
			i++;
			questionts.push($(this).val());
		}
   	}
	);
	if(i=0){
		alert("请至少选择一个试题");
		return;
	}else{	
		$.post(
		"/uunemo/delquestions",
		{"questions":$.toJSON(questionts)},
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