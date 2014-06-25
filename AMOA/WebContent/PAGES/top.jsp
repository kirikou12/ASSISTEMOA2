<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>

<html>
<style>

</style>


<body>
	<span class='logo'></span>	
    <section class='top-nav last'>
    	<bean:size id="notifs" name="membre" property="notifications"/>		
        <li><a href='#'>Tasks</a></li>
		<li><a href='#' >Messages<span class='rednum'>1</span></a></li>		
        <li><a href="${pageContext.request.contextPath}/PAGES/logout.jsp">Déconnexion</a></li>		
    </section>
    <section class='notification'>
      <li class='message' data-count='${notifs}'> <a href='#' class='notifs'>--</a></li>       
    </section>
	<div class='clearfix'></div>
</body>
</html>