<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
    <%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
	<jsp:include page="/showProjets.do" />

	Projet actuel:
	<br/>
	<logic:iterate id="projet" name="projets">
		<bean:write name="projet" property="titre"/> <br/>
		<bean:write name="projet" property="description"/><br/>
	</logic:iterate>	

</body>
</html>