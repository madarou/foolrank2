WEBROOT="/uunemo";


$(document).ready(function(){
	//循环生成
	var url = WEBROOT + "/getallquiz";
	$.post(
	   url,
	   function(data){
		   console.log(data);
		   for(var i in data){
			  var quizName = data[i].quizName;
			  var img = '<div class="col-md-2 col-ms-4 col-xs-4"><img  src="./resources/css/img/'+quizName+'.png"'+
				  'class="img-responsive" id="'+quizName+ '" onClick="window.location.assign('+"'viewquiz?quizName="+quizName+"'"+')"></img></div>';
			  if(data[i].quizAttr == "free"){
				  $("#freepanel").append(img);  
			  }else if(data[i].quizAttr == "paid"){
				  $("paidpanel").append(img);
			  }
			  
		   }
	   }
	)
})
//
//$(document).on("click","#c",function(){
//	window.location.assign("viewquiz?quizId=2");	
//});	

