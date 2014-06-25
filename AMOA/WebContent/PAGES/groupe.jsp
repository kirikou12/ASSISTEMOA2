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
	width: 199px;
	margin-left: 700px;
	margin-top: -400px;
}

#membresDuGroupe{
	border: solid 1px black;
}

#membresDuGroupe, #membresAInviter {	
	width: 199px;
	//margin-top: -90%;
	//margin-top: 30px;
	//padding: 10px;
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
	
	<script type="text/javascript">
		$(document).ready(function() {
			//Gestion liste des membres à inviter pour un groupe
		 	$('#membresAInviter').persistentPanel({defaultState: 'open'});
		});
	</script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/panel/jquery.cookie.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/panel/jquery.persistentpanel.js"></script>
</head>
<body>

	<div id="groupe"><div class="titre">${groupe.entitled}</div>	
	<br> ${groupe.description}</div>
	<br>
	
<div id="nav">
<div id="comment">
	
	<html:link action="/creerDiscussion.do" paramId="groupeId" paramName="groupe" paramProperty="id" styleId="formComment">
		<div class="titre">Créer une discussion</div>
	</html:link>
	
</div>	

	
	<div id="membresDuGroupe">
		<div class="titre">Les membres de ce groupe:</div>
			<logic:iterate id="membre" name="groupe" property="members">
				${membre.firstNam} <br>
			</logic:iterate>
	</div>
</div>
	<html:link action="/showSondage.do">Afficher sondage</html:link><br>

	
	<jsp:include page="/chargerMembres.do" />
	
	<html:form action="/inviterMembre.do" styleId="membres">
		<div class="titre">Inviter des membres à rejoindre ce groupe: <div class="panelToggler" id="panelToggler"></div></div>		
		<div id="membresAInviter">		
			<logic:iterate id="membre" name="users">		
				${membre.firstNam} 
				<html:checkbox property="selectedIds" value="${membre.id}" />
				<br>
			</logic:iterate>
			<html:submit>Inviter</html:submit>
		</div>		
	</html:form>	