<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Why the include: http://docs.oracle.com/cd/A87860_01/doc/java.817/a83726/basics4.htm -->
	<jsp:include page="/chargerChapitres.do" />
	 
	<html:form action="/sauveModificationDemande.do">
		<html:text property="title" value="${demande.sujet}"/> <br>
		<html:textarea property="content" value="${demande.description}"/><br>
		<html:select property="chapitre" styleClass="target">
			<html:option value="nothing">Vide</html:option>
			<html:options collection="chapitres" labelProperty="titre"
				property="titre" />
		</html:select>
		<html:hidden property="demandeId" value="${demande.demandeId}"/>
		<html:submit>Sauvegarder</html:submit>
	</html:form>

</body>
</html>