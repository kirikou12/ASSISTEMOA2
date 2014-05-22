<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/PAGES/css/cssDemande.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<table border="1" style="width: 70%; margin: auto;">
		<tr>
			<th>Détails</th>
			<th>Sujet</th>			
			<th>Pourcentage</th>
		</tr>
		<logic:notEmpty name="demandes" scope="session">

			<logic:iterate id="demande" name="demandes" scope="session">
				<tr>
					<td><html:link page="/afficherDemande.do" paramId="demandeId"
							paramName="demande" paramProperty="demandeId">
							<bean:write name="demande" property="demandeId" />
						</html:link></td>
					<td><a href="#" class="dilog" idDemande="${demande.demandeId}"><bean:write
								name="demande" property="sujet" /></a></td>
					<td><center>
						${demande.voteUp} <img alt="ko" src="${pageContext.request.contextPath}/PAGES/images/ok.PNG">|
						${demande.nbrVotes-demande.voteUp} <img alt="ko" src="${pageContext.request.contextPath}/PAGES/images/ko.PNG"> 
						</center></td>
				</tr>
			</logic:iterate>
		</logic:notEmpty>
	</table>

</body>
</html>