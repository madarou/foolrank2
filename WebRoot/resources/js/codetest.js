(function (){
//	 var editor = CodeMirror.fromTextArea($("#myTextarea"), {
//		 lineNumbers: true
//		  });
	 
	 
	 var editor = CodeMirror.fromTextArea(document.getElementById("myTextarea"), {
		 lineNumbers: true,
		 matchBrackets: true,
		 mode: "text/html",
		 autoCloseBrackets: true
		  });
	 
	 $("#submit").click(function(){
		 
//		 var content = $("#myTextarea");
//		var content=$("#myTextarea").val();
//		var content = document.getElementById("myTextarea").innerHTML;
		var content=editor.getValue();
		
		$.post(
			"/uunemo/submitcode",
			{"content":content},
			function(date){
				$("#displayzone").text(date);
			}
		);
		
		
	 });
	 
	 
	 
})();