(function (){
	//you can submit when submit==0
	var regemail='';
	var regusername='';
	var regpassword='';
	var school='';
	var company='';
		
	function validateemail(){
		 var re = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;	
		   regemail = $("#regemail").val();
		   if(regemail ==""){
			   $("#emailInfo").text("email不可为空");
			   return false;
		   }
		   else if(!re.test(regemail)){
				   $("#emailInfo").text("请输入正确的email格式");
				   return false;
			   }
		   else{
			       var postdata= {"email":regemail};  
				   $.post(
					  "/uunemo/register/validateemail",
					   postdata,
					   function(data){
						  if(data == "S"){
							  $("#emailInfo").text("Email已被注册，请核实");
							  return false;
						  }
						  else{
							  $("#emailInfo").text("恭喜您，该email可以使用");
							  return true;
						  }
					  }
				   );   
			   }
	}
	
	function validateusername(){
		regusername = $("#regusername").val();
		if(regusername == ""){
			 $("#userInfo").text("用户名不可为空");
			return false;
		}
		else{
			 var postdata={"name":regusername};
			 $.post(
					  "/uunemo/register/validatename",
					  postdata,
					  function(data){
						  if(data == "S"){
							  $("#userInfo").text("用户名已被使用");
							  return false;
						  }
						  else{
							  $("#userInfo").text("恭喜你，该用户名可以使用");
							  return true;
						  }
					  }
				   );  
		}
	}
	
	function validateanswer(){
		var answer = $("#answer").val();
     	var rightanswer = $("#rightanswer").val();
     	if(answer == ""){
     		$("#answerInfo").text("答案不可为空");
     		return false;
     	}
     	else if(answer != rightanswer){
     		$("#answerInfo").text("答案有误，请重新做题");
     		return false;
     	}
     	else{
     		$("#answerInfo").text("恭喜你，回答正确");
     		return true;
     	}
	}
	
	function validatepassword(){
		regpassword = $("#regpassword").val();
		if(regpassword == ""){
			return false;
		}
		else{
			return true;
		}
	}
	
	$(document).on("blur","#regemail",validateemail);
	$(document).on("blur","#regusername",validateusername);
	
	$(document).on("blur","#school",function(){
	       school = $("#school").val();
	     	if(school == ""){
	     		$("#schoolInfo").text("请选择所在学校");
	     	}
	});   
	
	$(document).on("blur","#answer",validateanswer);  
	$(document).on("blur","#regpassword",validatepassword);  
   
	$(document).on("click","#regBtn",function(){
		 if(!(validateusername()||validateemail()||validateanswer()||validatepassword())){
			 alert("填写有误，请根据提示填写");
		 }
		 else{
			 var mydata ={"email":regemail,"username":regusername,"password":regpassword,"school":school,"company":company};
//			 $.ajax({  
//			        type : 'POST',  
//			        contentType : 'application/json',  
//			        url : "/uunemo/register/createuser",  
//			        processData : false,  
//			        dataType : 'json',  
//			        data : mydata,  
//			        success : function(data) {  
//			            alert("fuck you"+data);  
//			        },  
//			        error : function() {  
//			            alert('Err...');  
//			        }  
//	 });
//			 $.ajaxSetup({  
//			        contentType : 'application/json'  
//			    });  
			 
			 $.post(
		    		 "/uunemo/register/createuser",
		    		 mydata,
		    		 function(result){
		    			 //关闭窗口modal
		    			 $("#btnModalClose",parent.document).click();
		    			 alert("恭喜您，注册成功");
		    		 }
		     );
		 } });

})();
	
//	$(document).on("blur","#password",function(){
//		var checkStrength = function (password){
//			//initial strength
//		    var strength = 1;
//			
//			//if password contains both lower and uppercase characters, increase strength value
//		    if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))  strength += 1;
//				
//			//if it has numbers and characters, increase strength value
//		    if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/))  strength += 1 ;
//				
//			//if it has one special character, increase strength value
//		    if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/))  strength += 1;
//				
//			//if it has two special characters, increase strength value
//			if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1;
//			return strength;
//		};
//		var self = $(this);
//		var password = self.val();
//		//initialize pStrength
//		var levelBlocks = $(".pStrengthLevelBlock");
//		levelBlocks.each(function(){
//			$(this).empty();
//		});
//		$(".pStrengthLevelWithText").removeClass("pStrengthLevelWithText");
//		//start to validate the password
//		if (password.length < 8) { 
//			$(this).next(".infoAlert").addClass("wrongInfo").attr("title","输入的密码太短，至少8位");
//		}else{
//			$(this).next(".infoAlert").removeClass("wrongInfo").addClass("rightInfo").removeAttr("title");
//			var strength = checkStrength(password);
//			switch (strength){
//				case 1: 
//					$(".pStrengthLevel2").removeClass("pStrengthLevel2");
//					levelBlocks.eq(0).html("不安全");
//					break;
//				case 2:
//					$(".pStrengthLevel1").removeClass("pStrengthLevel1");
//					$(".pStrengthLevel3").removeClass("pStrengthLevel3");
//					levelBlocks.eq(1).html( "弱");
//					break;
//				case 3:
//					$(".pStrengthLevel2").removeClass("pStrengthLevel2");
//					$(".pStrengthLevel4").removeClass("pStrengthLevel4");
//					levelBlocks.eq(2).html("一般");
//					break;
//				case 4:
//					$(".pStrengthLevel3").removeClass("pStrengthLevel3");
//					$(".pStrengthLevel5").removeClass("pStrengthLevel5");
//					levelBlocks.eq(3).html("良好");
//					break;
//				case 5:
//					$(".pStrengthLevel4").removeClass("pStrengthLevel4");
//					levelBlocks.eq(4).html("安全");
//					break;
//			}
//			levelBlocks.each(function(index,element){
//				if (index < strength)
//					$(this).addClass( "pStrengthLevel"+strength);
//				if (index + 1 == strength)
//					$(this).addClass("pStrengthLevelWithText");
//			});
//			
//			
//		}
//		
//	});
//	$(document).on("blur","#confirmPassword",function(){
//		var passwd = $("#password").val();
//		var comfirmPasswd = $(this).val();
//		if (passwd != comfirmPasswd){
//			$(this).next(".infoAlert").addClass("wrongInfo").attr("title","两次密码不匹配");
//		}else{
//			$(this).next(".infoAlert").removeClass("wrongInfo").addClass("rightInfo");
//		}
//	});
	
	
	
	
	
	
