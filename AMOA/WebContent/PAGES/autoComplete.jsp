<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>autocomplete demo</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<style type="text/css">
	#membre{
		//border:1px solid black;
		//margin-top:42px;
		paddin:10px;
		background-color: rgb(152, 237, 216);
		text-decoration:none;
		border-radius:2px;
	}
</style>
</head>
<body>
	
	<div id="champ">
		<label for="autocomplete">Inviter: </label>
		<input id="autocomplete">
	</div>
	<br>
	<html:form action="/test.do">
		<html:hidden property="membres" styleId="select"/>
		<br>
		<html:submit></html:submit>
	</html:form>
	<div id="selected"></div>
</body>
<script>
	//http://stackoverflow.com/questions/18612524/jquery-autocomplete-ui-with-servlet-is-not-returning-any-data
	$(document).ready(function() {
	    $(function() {
	        $("#autocomplete").autocomplete({
	            source: function(request, response) {
	                $.ajax({
	                    url: "/Cahier_de_charge/listMembreAuto.do",
	                    type: "POST",
	                    data: { term: request.term },
	                    dataType: "json",
	                    success: function(data) {
	                        response(data);
	                        
	                    }
	               });              
	            },
	            select : function(event, ui) {
	            	$("#select").val(function(i,val) { 
	            	     return val + (!val ? '' : ',')+ ui.item.id;
	            	});
					$("#selected").append('<a href=\'/Cahier_de_charge/detailUser.do\' id=\'membre\'>'+ 
							ui.item.label +'</a><br>'); 
					
				} 
	        });
	    });
	});
</script>

</html>