<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
	<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	
  	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/PAGES/css/notif/css.css" />	
    <link rel='stylesheet prefetch' href='${pageContext.request.contextPath}/PAGES/css/notif/style.css'>
    <script src="${pageContext.request.contextPath}/PAGES/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function () {
    	  $(".notifs").click(function () {
    	    	$(this).toggleClass("open");
    	    	$("#notificationMenu").toggleClass("open");
    	  });
    	});
    </script>
    
    
  	<title> <tiles:getAsString name="title"/></title>
</head>
<body>
 
<logic:notEmpty name="membre">		
	
<div class='fluid'>
  <header class='header clearfix'>
   		<tiles:insert attribute="top"/>   		
  </header>
  <div class='main'>
    <div class='breadcrumbs'>
		<ul id="breadcrumbs-one" class='last'>
			<li><a href="#"><bean:write name="membre" property="firstNam" /></a></li>			
			<li><a href="" class="current">Dashboard</a></li>
		</ul>
       <div class='clearfix'></div>
    </div>
  
    <div class='content'>
		<nav class='nav'>
			<tiles:insert attribute="nav"/>
		</nav>    
		<div class='min'>
			<tiles:insert attribute="content"/>
		</div>
    </div>
    <div class='clearfix'></div>
  </div>
</div>

	<ul id="notificationMenu" class="notifications">
      <li class="titlebar">
        <span class="title">Notifications</span>
        <span class="settings"><i class="icon-cog"></i>
        </span>
      </li>
      <div class="notifbox">
      <!-- Une notification -->
      <logic:iterate id="notif" name="membre" property="notifications"> 
      		<logic:equal value="true" name="notif" property="vue">
      			<li class=" notif">
      			
		          <a href="${pageContext.request.contextPath}/afficherNotif.do">
			            <div class="imageblock"><img src="https://si0.twimg.com/sticky/default_profile_images/default_profile_2_bigger.png" class="notifimage"  />
			            </div> 
			            <div class="messageblock">
				              <div class="message"><strong>${notif.objet}</strong>!</div>
				
				              <div class="messageinfo"><i class="icon-flag"></i>${notif.date}</div>
			            </div>
		          </a>
	        </li>
      		</logic:equal>  
      		<logic:equal value="false" name="notif" property="vue">
      			<li class="notif unread">
		          <a href="#">
			            <div class="imageblock"><img src="https://si0.twimg.com/sticky/default_profile_images/default_profile_2_bigger.png" class="notifimage"  />
			            </div> 
			            <div class="messageblock">
				              <div class=""><strong>${notif.objet}</strong>!</div>
				
				              <div class="messageinfo"><i class="icon-flag"></i>${notif.date}</div>
			            </div>
		          </a>
	        	</li>      		
      		</logic:equal>    
	        
        </logic:iterate> 
        <!-- Fin notification -->     
        
      </div>
      <li class="seeall">
        <a>See All</a>
      </li>
    </ul>		
		
</logic:notEmpty>
	
	

</body>
</html>