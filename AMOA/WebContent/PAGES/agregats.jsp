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

	<table border="1" style="width: 70%; margin: auto;">

		<logic:notEmpty name="agregats">
			<logic:iterate id="agregat" name="agregats">
				<logic:notEmpty name="agregat" property="demandes">
					<tr>
						<td colspan="5"><html:link page="/afficherAgregat.do"
								paramId="agregatId" paramName="agregat"
								paramProperty="id">
								<bean:write name="agregat" property="titre" />
							</html:link> </td>
					</tr>
				</logic:notEmpty>
			</logic:iterate>
		</logic:notEmpty>
	</table>
</body>
</html>