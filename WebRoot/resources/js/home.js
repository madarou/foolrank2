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
	);
	url = WEBROOT + "/rememberMeCheck";
	$.post(
			url,
			function(user){
				if(user.username !="nobody"){
			    	$("#preparelogin").hide();
			    	$("#showusername").text("欢迎！"+user.email);
			    	$("#alreadylogin").show();
			    	$("#loginModal").modal('hide');  
			    	var roles = user.roles;
			    	for(var i=0;i<roles.length;i++){
			    		if(roles[i].roleName == "operator"||roles[i].roleName=="admin"){
			    			$("#leftNav").append("<li><a href='#' data-target='#importModal' data-toggle='modal'>批量导入</a></li>");
			    		    break;
			    		}
			    	}
			      }
			});
	
})
//
//$(document).on("click","#c",function(){
//	window.location.assign("viewquiz?quizId=2");	
//});	

