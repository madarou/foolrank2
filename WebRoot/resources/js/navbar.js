WEBROOT ="/uunemo";

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
});


$("#btnImport").click(function(){
	$("#importForm").ajaxSubmit({
		url:WEBROOT+'/batchimport',
		type:"POST",
		dataType:"json",
	    success: function(data){
	    	console.log("data...........",data);
	    }
	})
	
})


$("#showRegisterModal").click(function(){
	$("#registerModal").modal({
	});
})

$("#showImportModal").click(function(){
	$("#importModal").modal('show');
})

$("#viewLoginModal").click(function(){
	$("#loginModal").modal('show');
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
					function(user){
				      if(user.username !="nobody"){
				    	$("#preparelogin").hide();
				    	$("#showusername").text(user.email);
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
				      else{
				    	  $("#alertInfo").text("用户名或密码错误");
				      }
			        });
			
	}
}); 



