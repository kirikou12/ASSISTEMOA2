<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Membres</title>
</head>
<body>
<logic:iterate id="user" name="users">
	<img alt="" src="${pageContext.request.contextPath}/PAGES/images/avatar.png" style="width:100px; height:100px;">
	<div id="nom"><bean:write name="user" property="firstNam" /></div>
	<br>
		
	<br>
</logic:iterate>
</body>
</html>