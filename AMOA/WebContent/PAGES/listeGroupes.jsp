<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demandes</title>
</head>
<body>
	<table border="1" style="width: 70%; margin: auto;">
		<tr>
			<th>Titre</th>
			<th>Description</th>
		</tr>
		<logic:iterate id="groupe" name="groupes">
			<tr>
				<td><html:link page="/afficherGroupe.do" paramId="groupeId"
						paramName="groupe" paramProperty="groupeId">
						<bean:write name="groupe" property="entitled" />
					</html:link></td>
				<td><bean:write name="groupe" property="description" /></td>
			</tr>
		</logic:iterate>
	</table>
</body>
</html>