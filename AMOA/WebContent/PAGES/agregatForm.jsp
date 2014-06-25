<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
     <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html:form   action="/regrouper.do">
	<label>Sujet:</label>
	<html:text property="sujet"/>
	<br>
	<label>Synthèse:</label>
	<html:textarea property="synthese"/>
	<br>
	<html:submit>Envoyer</html:submit>
</html:form>							
</body>
</html>