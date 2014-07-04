<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>


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

	<style type="text/css">
		
		#membresDuGroupe{
			border: 1px solid green;
			//float: right;
			width: 400px;
			margin: 10px;
			margin-top: 20px;
		}
		.membresAInviter{
			border: 1px solid green;
			//float: right;
			width: 400px;	
			margin: 10px;
		}
		
		#discussionCreationLink, #showSurvey{				
			background: DeepSkyBlue;
			font-size: large;
			text-decoration: none;
			margin: 10px;
		}
		
		
		.groupe{
			border: 1px solid red;
			width: 400px;	
			margin: 10px;		
		}
		.contentGroupe{
		}
		.titre{
			//border: 1px solid red;
			background: DeepSkyBlue;
			width: 100%;
			font-size: large;
			color: black;
		}
		.dicussions{
			border: 1px solid red;
			width: 400px;
			margin: 10px;				
		}
	</style>
</head>
<body>

	<div class="groupe">
		<div class="titre"> ${groupe.entitled} </div>
		<div class="contentGroupe"> ${groupe.description} </div>	
	</div>
	
	<br>
	
<div class="dicussions">
	<div class="titre"> Les discussions en cours</div>
	<logic:iterate id="discussion" name="groupe" property="discussions">		
		<html:link page="/afficherDiscussion.do" paramId="discussionId"
					paramName="discussion" paramProperty="id">
					${discussion.objet.sujet }
		</html:link>
		<br>
	</logic:iterate>
</div>

<div id="createDiscussion">
	
	<html:link action="/creerDiscussion.do" paramId="groupeId" paramName="groupe" paramProperty="id" styleId="discussionCreationLink">
		Créer une discussion
	</html:link>
	
</div>	
		
	<br>
	<br>
	
	<div id="membresDuGroupe">
		<div class="titre">Les membres de ce groupe:</div>
			<logic:iterate id="membre" name="groupe" property="members">
				${membre.firstNam} <br>
			</logic:iterate>
	</div>

	<br>

	<jsp:include page="/chargerMembres.do" />
	<div class="membresAInviter">	
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
	</div>	