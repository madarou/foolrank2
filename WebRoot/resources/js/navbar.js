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