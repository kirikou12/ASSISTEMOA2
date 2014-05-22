<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
    <%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/PAGES/css/cssAgregat.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Détail d'un agregat de demandes</title>
</head>
<body>
<div class="agregat">	
	

<div class="contenu" >
	<strong><bean:write name="agregat" property="titre"/></strong> <br>
	<bean:write name="agregat" property="synthese"/><br>
</div>
</div>
<hr width="30%">
C'est l'agregat de : <br>
<logic:iterate id="demande" name="agregat" property="demandes" scope="session">
<html:link page="/afficherDemande.do" paramId="demandeId"
	paramName="demande" paramProperty="demandeId">
		<bean:write name="demande" property="demandeId"/>							
</html:link>
	 |
</logic:iterate>
</body>
</html>