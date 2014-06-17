<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>

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

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<html:form action="/creerGroupe.do" styleId="myForm">
        <fieldset>
                <table>
                        <tr>
                                <td>
                                    <label for="truc_much">Nom du groupe:</label>
                                </td>
                                <td>
                                    <html:text property="nom" styleId="truc_much"  styleClass="ui-widget-content" size="30" value="" />
                                </td>
                        </tr>						
						
						<tr>
                                <td>
                                    <label for="truc_much">Description:</label>
                                </td>
                                <td>								
                                   <html:textarea property="objectif" rows="4" cols="28"></html:textarea>
                                </td>
                        </tr>
                        
                        <tr>                        
                                <td>
                                    <label for="autocomplete">Inviter: </label>
                                    <input id="autocomplete">
                                </td>
                                <td>								
                                   <html:hidden property="membres" styleId="select"/>
                                </td>
                        </tr>                       
                        
                </table>
        </fieldset>
</html:form>

</body>
<script type="text/javascript"	src="${pageContext.request.contextPath}/PAGES/js/myJQuery.js"></script>


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

</html:html>