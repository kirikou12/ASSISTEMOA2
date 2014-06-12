<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
	<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%-- Import pour le menu déroulant --%>
<link href="${pageContext.request.contextPath}/PAGES/css/menuDeroulantStyle.css" rel="stylesheet" type="text/css" />
<%-- FIN Import pour le menu déroulant --%>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	
  	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery-ui-1.8.4.custom.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery.form.js"></script>    
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/dialogBox.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/PAGES/css/jquery-ui-1.8.4.custom.css" media="screen" />  
    
</head>
<body>
   
   <logic:empty name="membre">
		<tiles:insert attribute="header" />
	</logic:empty>
	<logic:notEmpty name="membre">
		
			<bean:define id="membre" name="membre" scope="session" />
				<ul id="menu">
					<li><a href="#"><bean:write name="membre" property="firstNam" /></a>
						<ul>
							<li><a href="">Mon profil</a></li>
							<li><a href="">Mon compte</a></li>
							<li><a href="${pageContext.request.contextPath}/PAGES/logout.jsp">Déconnexion</a></li>
						</ul>
					</li>
					
					<li><a href="#">
							<html:link action="/demandesAffichageStandard.do">DEMANDES</html:link>
							</a>
						<ul>							
							<li><a href="#">
							<html:link action="/demandesTrieesParPeriorite.do">Demandes par priorité</html:link>	
								</a></li>
							<li><a href="${pageContext.request.contextPath}/PAGES/demandeForm.jsp">Créer demande</a></li>
							<li><a href="${pageContext.request.contextPath}/afficherDiscussions.do">Discussions</a></li>
						</ul>
					</li>
					
					<li><a href="#">GROUPES</a>
						<ul>
							<li><a href="#">
							<html:link action="/afficherGroupes.do">Groupes</html:link></a></li>
							<li><a href="#">
							<div class="mybox" url="${pageContext.request.contextPath}/PAGES/groupe.jsp" title="Nouveau groupe">Créer un groupe</div>
							</a></li>
							<li>
								<a href="#">
									<html:link action="/afficherAgregats.do">Agregats</html:link>	
								</a>
							</li>							
						</ul>
					</li>					
										
					
													
					<li>
						<a href="#">
							<html:link action="/afficherMembres.do">MEMBRES</html:link>	
						</a>
					</li>								
				</ul>
				
	
	<div id="monid" title=""></div>
		
	</logic:notEmpty>

</body>
</html>