<%@ attribute name="reponse" required="true" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>




<logic:notEmpty name="reponse">
	<logic:iterate id="reponse" name="reponse" property="reponses">
		${reponse.content}		
		<rec:write reponse="reponse.reponses"/>			
	</logic:iterate>
</logic:notEmpty>