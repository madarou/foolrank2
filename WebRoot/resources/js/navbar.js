$(document).ready(function(){
		var email = $("#email").val();
		if(email =="" ||typeof(email) == "undefined"  ){
			$("#alreadylogin").hide();
			$("#preparelogin").show();
		}
		else{
			$("#preparelogin").hide();
			$("#alreadylogin").show();
		}
});

$(document).on("click","#btnlogout",function(){
	$.post(
			"/uunemo/logout",
			function(result){
			  $("#alreadylogin").hide();
			  $("#preparelogin").show();
			  }
	       )
	
})
;  


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

