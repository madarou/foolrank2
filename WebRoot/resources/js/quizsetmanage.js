(function (){
	
	$("document").ready(function(){
		var pageNum = $("#pageNum").val();
		var maxPageNum =$("#maxPageNum").val();
		var numPerPage = $("#numPerPage").val();
		var totalPage = Math.ceil(maxPageNum/numPerPage);
		
		var options={
		    currentPage:pageNum,
		    totalPages:totalPage,
		    
		    onPageClicked:function(e,originalEvent,type,page){
//		    	$('<input/>',{name:"pagenum",value:page,style:"display:none"}).appendTo($("#bidform"));
//		    	$("#bidform").submit();
		    	var setName = $("#setname");
		    	var setinfo={"pageNum":page,"setName":setName};
		    	
		    	$.post(
		    	  "/uunemo/qrysetbyname",
		    	  setinfo,
		    	  function(listdata){
		    		  for(var i=0;i<listdata.size;i++){
		    			  var quizset= listdata[i];
		    			  var tableelemenmt='<tr><td>'+quizset.quizSetName+'</td><td>'+
		    			  quizset.remark+'</td><td>'+quizset.setScoreCriterion+'</td></tr>';
		    			  tableelemenmt.appendto('#tablehead');
		    		  }
		    	  }
		    	  
		    	);
		    	
		    	
		    }
		};
		
		$("#paginator").bootstrapPaginator(options);
	});
	
$("#createquizset").click(function(){
	var url = 'createquizset';   
	window.open(url);
});

})();