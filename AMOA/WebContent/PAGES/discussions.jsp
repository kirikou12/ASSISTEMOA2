<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<table border="0" style="width: 70%; margin: auto;">
<logic:notEmpty name="discussions" scope="session">
	<logic:iterate id="discussion" name="discussions" scope="session">
		<tr>
			<td><html:link page="/afficherDiscussion.do" paramId="discussionId"
					paramName="discussion" paramProperty="id">
					<bean:write name="discussion" property="objet.sujet" />
				</html:link></td>			
		</tr>
	</logic:iterate>
</logic:notEmpty>
</table>
</body>
</html>