<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery-ui-1.8.4.custom.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/jquery.form.js"></script>    
    <script type="text/javascript" src="${pageContext.request.contextPath}/PAGES/js/myJQuery.js"></script>
</head>
<body>
<html:form action="/test.do">
	<div id="divTest">
	</div>
	<a href="#" id="addFeild">+</a>	
	<html:submit property="submit" value="Submit"/>
</html:form>


</body>
</html>