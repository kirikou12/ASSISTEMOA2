<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>

<style type="text/css">
#membres {
	border: solid 1px black;
	width: 20%;
	margin-left: 60%;
	margin-top: -6%;
}
#commentTextarea{
	width: 99%;
	height: 120px;
}
#membresDuGroupe {
	border: solid 1px black;
	width: 20%;
	//margin-top: -90%;
	margin-top: 30px;
	padding: 10px;
}
#nav{
	margin-top: -90%;
}
#comment, #groupe{	
	border: solid 1px black;
	margin-top: 30px;
	padding: 10px;
	width: 40%;
}
.titre{
	background: rgb(0, 162, 232);
	padding: 10px;
}
</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery.form.js"></script>		
	<script type="text/javascript"	src="${pageContext.request.contextPath}/PAGES/js/myJQuery.js"></script>	
</head>
<body>

	<div id="groupe"><div class="titre">${groupe.entitled}</div>	
	<br> ${groupe.description}</div>
	<br>
	<jsp:include page="/chargerMembres.do" />
	<html:form action="/inviterMembre.do" styleId="membres">
		<logic:iterate id="membre" name="users">
${membre.firstNam} <html:checkbox property="selectedIds"
				value="${membre.id}" />
			<br>

		</logic:iterate>
		<html:submit></html:submit>
	</html:form>
<div id="nav">
<div id="comment">
	<html:form action="/sauvegarderCommentaire.do" styleId="formComment">
		<div class="titre">Ecrire une commentaire: </div>
		
		<html:textarea	property="comment" styleId="commentTextarea"></html:textarea>
	</html:form>
	<input type="submit" name="submit" id="submitComment" />
</div>	

	
	<div id="membresDuGroupe">
	<div class="titre">Les membres de ce groupe:</div>
		<logic:iterate id="membre" name="groupe" property="members">
${membre.firstNam} <br>

		</logic:iterate>
	</div>
</div>
	
</body>
</html>