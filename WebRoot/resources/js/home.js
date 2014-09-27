WEBROOT="/uunemo";

$(document).on("click","#c",function(){
	window.location.assign("viewquiz?quizId=1");	
});	

$(document).on("click","#btnlogin",function(){
	
	var email = $("#loginEmail").val();
	console.log("email..........",email);
	var password = $("#password").val();
	if (email == ""){
		$("#alertInfo").text("您还没有输入用户名！");
		return;
	}else if (password == ""){
		$("#alertInfo").text("您还没有输入密码！");
		return;
	}else{
		    var postData = {"email":email,"password":password};
			$.post("/uunemo/checkuser",
					postData,
					function(username){
				      if(username !="nobody"){
				    	$("#preparelogin").hide();
				    	$("#showusername").text(username);
				    	$("#alreadylogin").show();
				    	$("#loginModalDismiss").click();
				      }
				      else{
				    	  $("#alertInfo").text("用户名或密码错误");
				      }
			        });
			
	}
}); 


$("btnRegister").click(function(){
	
})
