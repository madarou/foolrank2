(function (){
	

	$(document).ready(function(){
			$.post(
					WEBROOT+"/register/fetchinfo",
					function(data){
					  console.log("validateQuestion",data.validateQuestion);
					  $("#validateQuestion").text(data.validateQuestion);
					  $("#rightanswer").val(data.validateAnswer);
					})
	});
	
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
		 if(!(validateemail()||validateanswer()||validatepassword())){
			 alert("填写有误，请根据提示填写");
		 }
		 else{
			 
			 var mydata ={"email":regemail,"password":regpassword,"school":school,"company":company};

			 $.post(
		    		 "/uunemo/register/createuser",
		    		 mydata,
		    		 function(result){
		    			 //关闭窗口modal
		    			 $("#registerModal").modal('hide');  
		    			 $("#preparelogin").hide();
					     $("#showusername").text(result);
					     $("#alreadylogin").show();
		    			 alert("恭喜您，注册成功!");    			
		    		 }   		
		     );
		 } });
	
		

})();

	
	
	
	
	
