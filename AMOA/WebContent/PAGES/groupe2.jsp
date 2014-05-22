<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
	<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<strong>
${groupe.entitled} </strong><br>
${groupe.description} 
<br>
<jsp:include page="/chargerMembres.do" />
<form action="/inviterMembre">
<logic:iterate id="membre" name="users">
${membre.firstNam} <html:checkbox property="selectedIds" value="${membre.id}" /><br>

</logic:iterate>
</body>
</html>