<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/myJQuery.js"></script>
   
</head>
<body>
<html:form action="/creatQuestionnaire.do">
	Question:<br>
	<html:textarea property="question"/><br>
	
	Question à choix multiples: <html:checkbox property="multipleChoice"/><br>
	
	Date: <input name="date" type="text" id="datepicker"> <br>
	
	
	Les propositions: <br>
	<div id="divTest">
	</div>
	
	<a href="#" id="addFeild">+</a>	<br><br><br>
	<html:submit property="submit" value="Submit"/>
</html:form>


</body>
</html>