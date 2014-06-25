<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
    <%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
	.choix{
		margin-left: 40px;
	}
</style>
</head>
<body>
<!-- todo: attribuer chque 'reaction' à sa question-->
	<html:form action="/sonder.do">
		<bean:write name="sondageEnCours" property="about"/> <br><br><br>
		<logic:iterate id="qt" name="sondageEnCours" property="questions">
			<bean:write name="qt" property="content"/><br>
			
			<div class="choix">
			<logic:equal name="qt" property="multipleChoice" value="true">
				<logic:iterate id="choix" name="qt" property="choix">
					<html:checkbox property="multipleChoicesSelected" value="${choix.id},${qt.id}">
						<bean:write name="choix" property="content"/><br>
					</html:checkbox>
				</logic:iterate>				
			</logic:equal>
			</div>
			<div class="choix">
				<logic:equal name="qt" property="multipleChoice" value="false">
					<logic:iterate id="choix" name="qt" property="choix">
						<html:radio property="singleChoicesSelected" value="${choix.id},${qt.id}">${choix.content}</html:radio><br>
					</logic:iterate>
				</logic:equal>	
				Autre: <input type="text">			
			</div>
			<br><br>
		</logic:iterate>
		<html:submit>Sonder</html:submit>
	</html:form>
</body>
</html>