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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/PAGES/css/cssDemande.css"  type="text/css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/groupe/jquery.form.js"></script>

<!-- Text editor includes-->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/PAGES/texteditLibs/jquery-te-1.4.0.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/texteditLibs/jquery-te-1.4.0.min.js" charset="utf-8"></script>
<!-- Fin Text editor includes -->

	<script type="text/javascript">
		$(document).ready(function() {
			
			//Gestion de vote
			$('.voter').click(function(){
				var context = $(this).attr('context');
				var demandeId = $(this).attr('idDemande');
				var vote = $(this).attr('value');
				$.ajax({
					   type: "POST",
					   url: context+"/voterDemande.do",
					   data: "id="+demandeId+"&vote="+vote,
					   success: function(msg){	
						   if(msg != "")
							   alert(msg);				   
					   }
					 });
				
				//$(this).off(); Désactiver un lien
			});
			//Gestion de vote: FIN

		
			//Gestion des commentaires
			$("#submitComment").click(
					function() {
						$("#formComment").ajaxSubmit(
								{
									error : function() {
										alert("Il y a une erreur AJAX");
									},
									beforeSubmit : function() {
									},
									success : function(e) {	
										$('#formComment').reset();
										$("#myComment").append(
												"<div id=\"comment\">" + e + "</div>")
												.hide().slideDown(600);								
									}
								});
						
			});
			
			//Gestion de suivi d'une demande
			$('#suivreLink').click(function(){
				var demandeId = $(this).attr('demandeId');
				$.ajax({
					   type: "POST",
					   url: "/Cahier_de_charge/suivreDemande.do",
					   data: "demandeId="+demandeId,
					   success: function(msg){					  
						  $("#suivreLink").hide();  			   
					   }
					 });
				
				//$(this).off(); Désactiver un lien
			});
			//Gestion de suivi d'une demande: FIN
	    
	    
		    //Mouseover/Mouseout une demande
		    $( "#contenuDemande" ).mouseover(function() {
		    	$("#modifier").show();
		    });
		    $( ".contenu" ).mouseout(function() {
		    	$("#modifier").hide();
		    });
		    
		    //Mouseover/Mouseout le pourcentage
		    $( "#pourcentage" ).mouseover(function() {
		    	$("#pourcent").show();
		    });
		    $( ".contenu" ).mouseout(function() {
		    	$("#pourcentage").hide();
		    });
		
		});		
	</script>

</head>
<body>
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
		<textarea name="comment" rows="4" cols="50" id="commentTextarea" class="jqte-test"> </textarea>
		<!-- <html:textarea property="comment" styleId="commentTextarea"
			styleClass="jqte-test"></html:textarea> -->	
			<html:hidden property="discussionId" value="${discussion.id}"/>	
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
	
	
	
	<script>
		$( "#commentTextarea" ).select(function() {
			alert("seletcted text:"+getSelectedText());
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