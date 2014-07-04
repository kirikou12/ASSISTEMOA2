<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<script src="${pageContext.request.contextPath}/PAGES/js/groupe/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/groupe/jquery-ui-1.8.4.custom.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/groupe/jquery.form.js"></script>
	<script type="text/javascript">
	//Create a group 
	$(document).ready(function() {
	    $('.mybox').click(function(){
	      var monurl = $(this).attr('url');		      
	      var montitle = $(this).attr('title');
	      /*
	      I guess $('#dialog-confirm').attr("title", "Message"); doesn't work the second time because jQuery UI Dialog already made changes to the actual DOM. So changing the title attribute of the div doesn't do anything
	      */
	      $("#monid").load(monurl, function() {
	          $(this).dialog({
	        	 title: montitle,
	             height: 'auto',
	             width:'auto',
	             modal: true,
	             position: 'top',
	             overlay: {
	                     backgroundColor: '#000',
	                     opacity: 0.5
	             },
	             buttons: {
	                'Envoyer': function() {
	                    $("#myForm").ajaxSubmit({                                                             
	                           error: function(){ 
	                                   alert("theres an error with AJAX");
	                           },
	                           beforeSubmit: function(){
	                        	    $("#loader").show();
	                           },
	                           success: function(e){
	                        	   $("#loader").hide();
							   		$("#rep").fadeIn(1100).html(e).fadeOut(900);
	                           }
	                    });
	                    $(this).dialog('close');
	                },
	                Cancel: function() {
	                        $(this).dialog('close');
	                }
	             }
	          });
	      });
	    });
	});
  //Create a group: FIN
	</script>

</head>
<body>

	<li><a href="#"><div class="mybox" url="${pageContext.request.contextPath}/PAGES/groupeForm.jsp" title="Nouveau groupe">Créer un groupe</div>
	</a></li>	
	<li><html:link action="/demandesTrieesParPeriorite.do">Demandes par priorité</html:link></li>
	<li><a href="${pageContext.request.contextPath}/demandeForm.do">Créer une demande</a></li>
	<li><a href="${pageContext.request.contextPath}/afficherDiscussions.do">Discussions</a></li>	
	<li><html:link action="/demandesAffichageStandard.do">Demandes</html:link></li>
	<li><html:link action="/afficherGroupes.do">Groupes</html:link></li>
	<li><html:link action="/afficherAgregats.do">Agregats</html:link></li>	
	<li><html:link action="/afficherMembres.do">Membres</html:link></li>
	<li><html:link action="/showSondage.do" >Afficher sondage</html:link></li>
	<!-- C'est le div dans laquelle on affiche le formulaire de création d'un groupe -->
	<div id="monid" title="Nouveau groupe"></div>
</body>
</html>