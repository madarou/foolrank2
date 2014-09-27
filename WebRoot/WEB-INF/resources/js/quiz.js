(function (){
	$('input').each(function(){
	    var self = $(this),
	      label = self.next(),
	      label_text = label.text();
	    label.remove();
	    self.iCheck({
	      checkboxClass: 'icheckbox_line-aero',
	      radioClass: 'iradio_line-aero',
	      insert: '<div class="icheck_line-icon"></div>' + '<span>'+label_text+'</span>'
	    });
	  });
	
	//开始做题，显示做题面板，并取出一道题
	$(document).on("click","#letsbegin",function(){
		$(".quizinfo").hide();
		$(".takequiz").show();
		$("#nextquestion").click();
	});
	
	//取出一道题，并生成答题页面
	$(document).on("click","#nextquestion",function(){
		//循环生成正确答案，并隐藏，设置为未选中
		var optionnum= $("#optionnum").text();
		var answer="";
		var allinput = $('input');//选择所有的input，并循环检测
 		for(var j=0;j<optionnum;j++){
			if(allinput[j].checked){
				answer+="1";
			}
			else{
				answer+="0";
			}
			//iCheck不起作用		
		}
		
//		$('input').iCheck('uncheck');
		$("li").hide();
		 
		$.post("/uunemo/takequiz",
				{"quizName":"cEssential","answer":answer},
				function(list){
				  var score = list[0];	
				  var question = list[1];	
			      var questionobj=eval(question);
			      if(questionobj.questionContent=="end"){
					  alert("恭喜你，已做到最后一题,跳到主页");
					  window.location.assign("home");	
				  }
	 //如果是选择题，显示选择题界面，隐藏全部选项，再根据选项个数并对选项依次显示
				  if(questionobj.questionType=="option"){ 
					  $(".optionplane").show();
					  $("#optionnum").text(questionobj.options.length);
					  $("#questioncontent").text(questionobj.questionContent);
					  for(var i=0;i<questionobj.options.length;i++){
						  var myoption = "#"+"option"+i;
						  $(myoption).show();
						  $(myoption).find("span").text(questionobj.options[i].option);
					  }
				    }
				  }
		        );
	});
})();