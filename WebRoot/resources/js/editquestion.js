(function (){
	
	
	$("#btnSaveQuestion").click(function(){
		var questionContent =  $("#questContent").val();
		var point = $("#questionPoint").val();
		var options =[];
		var i=0;
		$(".option").each(function(){
			var option = $(this).val();	
			if(option != ''){			
				i++;
				options.push(option);
			}
		});
		if(questionContent.length==0&&i==0){
			alert('输入选项不可全部为空');
			return false;
		}else{
			$.post(
			 '/uunemo/savequestion',
			 {"questionContent":questionContent,"point":point,"options":$.toJSON(options)},
			 function(data){
				 $("#btnModalClose",parent.document).click();
				 alert("试题保存成功");
			 }
			);
		}
	});
	
	
	function initialQuestion(question){
		$('#questContent').val(question.questionContent);
		$('#questionPoint').val(question.point);
		
		var i=0;
		var optionLength = question.options.length;
		$('#option').each(function(){
			if(i>= optionLength){
			}else{
				$(this).val(question.options[i++]);
			}
		});
	} 
	
	
})();