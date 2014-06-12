<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Text editor includes-->

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/PAGES/texteditLibs/jquery-te-1.4.0.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/PAGES/texteditLibs/jquery-te-1.4.0.min.js"
	charset="utf-8"></script>


<!-- Fin Text editor includes -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/PAGES/js/dialogBox.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/PAGES/js/jquery.form.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/PAGES/css/cssDemande.css" />

</head>
<body>
<jsp:include page="welcome.jsp"/>
<br><br><br><br><br>

	<div class="demande">
	<bean:define id="demande" name="discussion" property="objet"></bean:define>
		<div class="titre">
			<strong><bean:write name="demande"
					property="auteur.firstNam" /></strong> <br>
			<bean:write name="demande" property="cree" />
		</div>
		<div class="contenu" id="contenuDemande">
			<strong><bean:write name="demande" property="sujet" />:</strong>

			<logic:equal value="${membre.id}" name="demande" property="auteur.id">
				<html:link action="/modifierDemande.do" paramId="demandeId"
					paramName="demande" paramProperty="demandeId" styleId="modifier">Modifier</html:link>
			</logic:equal>
			<br>
			<br>
			<bean:write name="demande" property="description" />
		</div>
		<br>
		<div id="suivre">
			<logic:equal value="-1" name="demande" property="assigneA.id">
				<logic:equal value="true" name="membre" property="admin">
					<a id="suivreLink" href="" demandeId="${demande.demandeId}">Suivre</a>
				</logic:equal>
			</logic:equal>
		</div>
		<div class="vote">
			<a href="#" class="voter" value="Pour"
				idDemande="${demande.demandeId}"
				context="${pageContext.request.contextPath}"> <img alt="ko"
				src="${pageContext.request.contextPath}/PAGES/images/ok.PNG">
			</a> <a href="#" class="voter" value="Contre"
				idDemande="${demande.demandeId}"
				context="${pageContext.request.contextPath}"> <img alt="ko"
				src="${pageContext.request.contextPath}/PAGES/images/ko.PNG" id="ko">
			</a>

			<logic:notEmpty name="demande" property="votes">
				<div class="pourcentage">
					<div id="pourcent"
						style="width:${(demande.voteUp*100)/demande.nbrVotes}%;"></div>
				</div>
			</logic:notEmpty>
		</div>
	</div>




	<div class="comments">
		<logic:iterate id="commento" name="discussion" property="comments">
			<div class="comment">
				<div class="titreComment">
					<strong><bean:write name="commento"
							property="author.firstNam" /></strong><br>
					<bean:write name="commento" property="date" />
				</div>
				<div class="contenu">
					<bean:write name="commento" property="content" filter="false" />
				</div>
				
				
				<rec:write reponse="${commento.reponses}"></rec:write>
			</div>
		</logic:iterate>
	</div>

	<html:form action="/sauvegarderCommentaire.do" styleId="formComment">
		<label for="textarea" id="labelTextarea">Ecrire une
			commentaire:</label>
		<br>
		<html:textarea property="comment" styleId="commentTextarea"
			styleClass="jqte-test"></html:textarea>
	</html:form>
	<input type="submit" name="submit" id="submitComment" />


	<script>
		$('.jqte-test').jqte();

		// settings of status
		var jqteStatus = true;
		$(".status").click(function() {
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({
				"status" : jqteStatus
			})
		});
	</script>
	<input type="text"  id="d" value="Some text"/>
	<script>
		$( "#d" ).select(function() {
			alert("gggg:"+getSelectedText());
		});
		
		function getSelectedText() {
	        if (window.getSelection) {
	            return window.getSelection().toString();
	        } else if (document.selection) {
	            return document.selection.createRange().text;
	        }
	        return '';
	    }
	</script>
</body>


</html>