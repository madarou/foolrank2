WEBROOT="/uunemo";


$(document).ready(function(){
	var url = WEBROOT + "/getquizbyattr";
	var data ={"attr":"free"};
	$.post(
	   url,
	   data,
	   function(data){
		   for(var i in data){
			  var quizName = data[i];
			  var img = '<div class="col-md-2 col-ms-4 col-xs-4"><img  src="./resources/css/img/'+quizName+'.png"'+
				  'class="img-responsive" id="'+quizName+ '" onClick="window.location.assign('+"'viewquiz?quizName="+quizName+"'"+')"></img></div>';
			  $("#freepanel").append(img);
		   }
	   }
	)
})
//
//$(document).on("click","#c",function(){
//	window.location.assign("viewquiz?quizId=2");	
//});	

