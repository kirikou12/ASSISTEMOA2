
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Créer une demande</title>
</head>
<body>
	<jsp:include page="/chargerChapitres.do" />

	<html:form action="/creerDemande.do" enctype="multipart/form-data">
		Sujet:
		<html:text property="sujet"></html:text><br>
		Description:
		<html:textarea property="description"></html:textarea><br>
		Projet:
		<html:text property="projet"></html:text><br>
		Tracker:
		<html:text property="tracker"></html:text><br>
		Statut:
		<html:text property="statut"></html:text><br>			
		Chapitre:
		<html:select property="chapitre" styleClass="target">
			<html:option value="nothing">Vide</html:option>
			<html:options collection="chapitres" labelProperty="titre"
				property="titre" />
		</html:select><br>
		<html:file property="files"></html:file><br>
		
		<html:submit>Sauvegarder</html:submit>
	</html:form>
</body>
</html:html>