<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
    <%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>        
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/PAGES/css/style.css" />
</head>
    <body>
		<div class="wrapper">
			<div class="content">				
				<div id="form_wrapper" class="form_wrapper">
					<html:form  styleClass="register" action="/Sinscrire.do">
						<h3>Inscription</h3>
						<div class="column">
							<div>
								<label>								
								<bean:message key="firstname.label"/>:</label>
								<html:text property="firstNam"  styleClass="input"/>								
							</div>
							<div>
								<label><bean:message key="firstname.label"/>:</label>
								<html:text property="lastName" styleClass="input"/>
							</div>
							<div>
								<label><bean:message key="website.label"/>:</label>
								<html:text property="website" styleClass="input" value="http://"/>
							</div>
						</div>
						<div class="column">							
							<div>
								<label>Email:</label>
								<html:text property="email" styleClass="input" />
							</div>
							<div>
								<label>Mot de passe:</label>
								<html:text property="password" styleClass="input" />
							</div>
						</div>
						<div class="bottom">							
							<input type="submit" value="Envoyer" />
							<a href="index.html" rel="login" class="linkform">Identification</a>
							<div class="clear"></div>
						</div>
					</html:form>
					<html:form styleClass="login active" action="/auth.do">
						<h3>Identification</h3>
						<div>
							<label>
								<font color="red">			                    
				                    <html:errors property="WrongUserName" />
				                </font><br><br>
								Pseudo:								
			                </label>
							
							<html:text property="userName"  styleClass="input"/>
							<span class="error">This is an error</span>
						</div>
						<div>
							<label>Mot de passe: <a href="" rel="forgot_password" class="forgot linkform">Mot de passe oublié?</a></label>
							<html:password property="password"  styleClass="input"/>
							<span class="error">This is an error</span>
						</div>
						<div class="bottom">							
							<input type="submit" value="Connexion"/>
							<a href="register.html" rel="register" class="linkform">Inscription</a>
							<div class="clear"></div>
							
						</div>
					</html:form>
					<form class="forgot_password">
						<h3>Mot de passe:</h3>
						<div>
							<label>Pseudo:</label>
							<input type="text" />
							<span class="error">This is an error</span>
						</div>
						<div class="bottom">
							<input type="submit" value="Envoyer un rappel"></input>
							<a href="index.html" rel="login" class="linkform">Identification</a>
							<a href="register.html" rel="register" class="linkform">Inscription</a>
							<div class="clear"></div>
						</div>
					</form>
				</div>
				<div class="clear"></div>
			</div>
			
		</div>
		

		<!-- The JavaScript -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript">
			$(function() {
					//the form wrapper (includes all forms)
				var $form_wrapper	= $('#form_wrapper'),
					//the current form is the one with class active
					$currentForm	= $form_wrapper.children('form.active'),
					//the change form links
					$linkform		= $form_wrapper.find('.linkform');
						
				//get width and height of each form and store them for later						
				$form_wrapper.children('form').each(function(i){
					var $theForm	= $(this);
					//solve the inline display none problem when using fadeIn fadeOut
					if(!$theForm.hasClass('active'))
						$theForm.hide();
					$theForm.data({
						width	: $theForm.width(),
						height	: $theForm.height()
					});
				});
				
				//set width and height of wrapper (same of current form)
				setWrapperWidth();
				
				/*
				clicking a link (change form event) in the form
				makes the current form hide.
				The wrapper animates its width and height to the 
				width and height of the new current form.
				After the animation, the new form is shown
				*/
				$linkform.bind('click',function(e){
					var $link	= $(this);
					var target	= $link.attr('rel');
					$currentForm.fadeOut(400,function(){
						//remove class active from current form
						$currentForm.removeClass('active');
						//new current form
						$currentForm= $form_wrapper.children('form.'+target);
						//animate the wrapper
						$form_wrapper.stop()
									 .animate({
										width	: $currentForm.data('width') + 'px',
										height	: $currentForm.data('height') + 'px'
									 },500,function(){
										//new form gets class active
										$currentForm.addClass('active');
										//show the new form
										$currentForm.fadeIn(400);
									 });
					});
					e.preventDefault();
				});
				
				function setWrapperWidth(){
					$form_wrapper.css({
						width	: $currentForm.data('width') + 'px',
						height	: $currentForm.data('height') + 'px'
					});
				}
				
				/*
				for the demo we disabled the submit buttons
				if you submit the form, you need to check the 
				which form was submited, and give the class active 
				to the form you want to show
				
				$form_wrapper.find('input[type="submit"]')
				 .click(function(e){
					e.preventDefault();
				 });
				
				*/
					
			});
        </script>
    </body>
</html>