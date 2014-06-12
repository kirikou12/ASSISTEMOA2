<%@ attribute name="reponse" required="true" type="java.util.Set"%>
<!-- Si on precise dpas de type, il prend le type par défaut, à savoir String! -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="rec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>


<logic:notEmpty name="reponse">
	<logic:iterate id="rep" name="reponse" >				
		
		<div class="comment">
				<div class="titreComment">
					<strong></strong><br>
					${rep.date}
				</div>
				<div class="contenu">
					${rep.content}
				</div>				
				<rec:write reponse="${rep.reponses}"/>	
		</div>			
	</logic:iterate>
</logic:notEmpty>