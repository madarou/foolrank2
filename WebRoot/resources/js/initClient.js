$(document).ready(function(){
	var windowHeight  = $(window).height();
	var windowWidth = $(window).width();
	var documentHeight  = $(document).height();
	var totalHeight =$(".commonBody>header").height()+$(".commonBody>section").height()+$(".commonBody>footer").height();
	var clientHeight = windowHeight>documentHeight?windowHeight:documentHeight;
	var finalHeight = clientHeight>totalHeight?clientHeight:totalHeight;
	$(".commonBody").height(finalHeight);
	$("#registerModal").width(windowWidth/2);
	WEBROOT="/uunemo";
});
