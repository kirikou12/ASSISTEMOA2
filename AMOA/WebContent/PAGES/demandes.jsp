<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Style de la barre de vote -->
<style type="text/css">
.pourcentage {
	width: 60px;
	height: 6px;
	background-color: rgb(215, 215, 215);
}

#pourcent {
	height: 6px;
	background-color: green;
	color: green;
}
A:link {text-decoration: none}
a img
{
	border: none;
} 
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%-- Import pour la boite de dialogue --%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"/>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/PAGES/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/PAGES/js/jquery-ui-1.8.4.custom.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/PAGES/js/jquery.form.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/PAGES/js/myJQuery.js"></script>
<%-- FIN Import pour la boite de dialogue --%>
</head>
<body>
	<div id="dialog-modal"></div>
	<html:form action="/fusionnerDemandesSelectionees.do">
		<table border="0" style="width: 70%; margin: auto;">
			<tr>
				<th>Détails</th>
				<th>Sujet</th>
				<th>Select</th>
			</tr>
			<logic:notEmpty name="demandes" scope="session">

				<logic:iterate id="demande" name="demandes" scope="session">
					<tr>
						<td><html:link page="/afficherDemande.do" paramId="demandeId"
								paramName="demande" paramProperty="demandeId">
								<bean:write name="demande" property="demandeIdRMINE" />
							</html:link></td>
						<td><a href="#" class="dilog"
							idDemande="${demande.demandeId}" titreDemande="${demande.sujet}"><bean:write name="demande"
									property="sujet" /></a></td>						
					
						<td><html:checkbox property="selectedIds"
								value="${demande.demandeId}" /></td>
					</tr>
				</logic:iterate>
			</logic:notEmpty>
		</table>
		<html:submit style="margin-left:73.5%;">Fusionner</html:submit>
	</html:form>
</body>


</html>