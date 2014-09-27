(function (){
//	$.getJSON("../resources/demoData/saying.json",function(data){
//		$(".saying").html(data["saying"]);
//	});
	/*
	$("#loginBtn").click(function() { 
	    alert("I'm Test Button"); 
	});*/
	
	
	$(document).ready(function(){
		var username = $("#username").val();
		if(username ==""){
			$("#alreadylogin").hide();
			$("#preparelogin").show();
		}
		else{
			$("#preparelogin").hide();
			$("#alreadylogin").show();
		}
	});
	
	$(document).on("click","#btnlogin",function(){
		
		$(".alertInfo").hide();
		var username = $("#email").val();
		var password = $("#password").val();
		if (username == ""){
			alert("username can not be null"); 
			$(".alertInfo").val("您还没有输入用户名！");
			return;
		}else if (password == ""){
			alert("password can not be null"); 
			$(".alertInfo").val("您还没有输入密码！");
			return;
		}else{
	//-     $.getScript("lib/md5.js",function(){
	//-		var passwd= $("#passwd").val();
	//-		$("#passwd").val(hex_md5\(passwd));
			    var postData = {"username":username,"password":password};
				$.post("/uunemo/checkuser",
						postData,
						function(username){
					      if(username !="nobody"){
					    	$("#preparelogin").hide();
					    	$("#showusername").text(username);
					    	$("#alreadylogin").show();
					      }
					      else{
					    	  alert("用户名或密码错误");
					      }
				        });
				
		//-	});
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
	//相对路径，是有问题的,改用ajax，弹出iframe页面
	$(document).on("click","#btnregister",function(){
//		使用bootstrap的对话框，效果不错
		$('#registerModal').modal({	
		show:true,
		remote:"register"
		});
	});
	
	$(document).on("click","#c",function(){
		window.location.assign("viewquiz?quizId=1");	
	});	
})();