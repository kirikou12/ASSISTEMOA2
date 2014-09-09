<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>

<html>
<style>

</style>


<body>
	<span class='logo'></span>	
    <section class='top-nav last'>
    	<bean:size id="notifs" name="membre" property="notifications"/>		
        <li><a href='#'>Tasks</a></li>
		<li><a href='#' >Messages<span class='rednum'>5</span></a></li>		
        <li><a href="${pageContext.request.contextPath}/PAGES/logout.jsp">Déconnexion</a></li>		
    </section>
    <section class='notification'>
    	<logic:equal value="0" name="notifs">
    		<li class='emptyMessage' data-count=''> <a href='#' class='notifs'>--</a></li> 
    	</logic:equal>
    	<logic:notEqual value="0" name="notifs">
    		<li class='message' data-count='${notifs}'> <a href='#' class='notifs'>--</a></li> 
    	</logic:notEqual>     
    </section>
	<div class='clearfix'></div>
</body>
</html>