<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
	<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Text editor includes-->

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/PAGES/texteditLibs/jquery-te-1.4.0.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/texteditLibs/jquery-te-1.4.0.min.js" charset="utf-8"></script>



<!-- Fin Text editor includes -->


<style type="text/css">
.titre {
	background: rgb(0, 162, 232);
	padding: 10px;
	width: 94.2%;
}

.contenu {
	border: solid 1px black;
	width: 500px;
}

.demande, #offre {
	margin: 10px;
	border: solid 1px black;
	width: 40%;
	padding:3px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div class="demande">
		<div class="titre"><strong>Titre: demande static</strong></div>
		<div>
			Exemple de demande de la création d'une....<br> Cette demande
			concerne la possibilité de changer... etc.
		</div>
	</div>
	<div id="offre">
		<html:form action="/proposerOffre.do" styleId="formComment">
			<div class="titre"><strong>Faites une offre:</strong></div>
			Estimation:
			<html:text property="prix"></html:text>
			<br>
			Description:
			<html:textarea property="description" styleId="commentTextarea" style="WIDTH:95%;" styleClass="jqte-test"></html:textarea>
			<html:hidden property="idDemande" value="1"/>
			<html:submit>Soumettre l'offre</html:submit>
		</html:form>
		
	</div>

<script>
	$('.jqte-test').jqte();
	
	// settings of status
	var jqteStatus = true;
	$(".status").click(function()
	{
		jqteStatus = jqteStatus ? false : true;
		$('.jqte-test').jqte({"status" : jqteStatus});
	});
</script>
</body>
</html>