<%@ attribute name="reponse" required="true" type="java.util.Set"%>
<!-- Si on precise dpas de type, il prend le type par défaut, à savoir String! -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="rec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>


<logic:notEmpty name="reponse">
	<logic:iterate id="rep" name="reponse" >		
		<div class='comment'>
			<div class='titre'><strong>${rep.author.firstNam}</strong><br>
					${rep.date}</div>
			<div class='commentContent'>
				${rep.content}
			</div>
			<logic:notEmpty name="rep" property="reponses">
				<div class='subComments'>
					<div class='reduce'>_</div>
					<div class='reduce' style="display:none;">+</div>
					<rec:write reponse="${rep.reponses}"/>					
				</div>
			</logic:notEmpty>
		</div>		
	</logic:iterate>
</logic:notEmpty>
	