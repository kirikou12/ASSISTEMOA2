<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
    <%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
	<style type="text/css">
		.close_box{
			color: #bdc3c7;
  			font-size: 1.25em;
		}
		
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery-1.11.1.min.js"></script>
	<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
	
	<script type="text/javascript">
		$(document).ready(function() {
			
			//Calendrier
			$( ".datepicker" ).datepicker({
				changeMonth: true,
				changeYear: true, 
				dateFormat: "mm/dd/yy"
			});				
			//Gestion du Calendrier: FIN
			
			
			//Gestion de formulaire dynamique
			
			$('#addFeild').click(function(){
				$('#divTest').append("<div> <input name='propositions' type='text'/> <a href='#' class='close_box'>x</a>  </div>");
			});	
			$('#divTest').on('click', '.close_box', function(){
			    $(this).parent().remove();
		    });
		
		//Gestion de formulaire dynamique: FIN
		});
	</script>
   
</head>
<body>
<logic:empty name="sondageEncours">
	<html:form action="/createSondage">
		Description du sondage:
		<html:textarea property="sujet"></html:textarea>
		<br>
		Date de d�but:
		<input name="debut" type="text" class="datepicker">
		<br>
		Date de fin:
		<input name="fin" type="text" class="datepicker"><br>
		<html:submit property="submit" value="Cr�er le sondage"/>
	</html:form>
</logic:empty>

<logic:notEmpty name="sondageEncours">
	<html:form action="/addQuestion.do">
	Question:<br>
	<html:textarea property="question"/><br>
	
	Question � choix multiples: <html:checkbox property="multipleChoice"/><br>
	
	<!-- Date: <input name="date" type="text" id="datepicker"> <br> -->
	
	Les propositions: <br>
	<div id="divTest">
	</div>
	
	<a href="#" id="addFeild">+</a>	<br><br><br>
	<html:submit property="submit" value="Submit"/>
</html:form>
</logic:notEmpty>

</body>
</html>