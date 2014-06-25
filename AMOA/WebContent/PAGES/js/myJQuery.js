$(document).ready(function() {
	
	
	
	
	

		
	
	//Quick show demand
	$('.dilog').click(function(){
		var demandeId = $(this).attr('idDemande');
		var titreDemande = $(this).attr('titreDemande');
		$.ajax({
			   type: "POST",
			   url: "/Cahier_de_charge/afficherDemande.do",
			   data: "data="+demandeId,
			   success: function(msg, titlet){
				   $( "#dialog-modal" ).html(msg);
				   $( "#dialog-modal" ).dialog({
					   		height: 'auto',
					   		width:'500px',
					   		modal: true,
					   		title: titreDemande
					    });
			   }
			 });

	});
	//Quick show demand: FIN
	
	
	
	
	/*
	 * Function to add in jquery librery, it allows to reset a form.
	 	jQuery.fn.reset = function () {
		  $(this).each (function() { this.reset(); });
		}
	 */
	//Gestion des commentaires: FIN
	
	
	 
    
   
    
    //Pour le menu déroulant
    sfHover = function() {
		var sfEls = document.getElementById("menu").getElementsByTagName("LI");
		for ( var i = 0; i < sfEls.length; i++) {
			sfEls[i].onmouseover = function() {
				this.className += " sfhover";
			}
			sfEls[i].onmouseout = function() {
				this.className = this.className.replace(new RegExp(
						" sfhover\\b"), "");
			}
		}
	}
	if (window.attachEvent)
		window.attachEvent("onload", sfHover);
    
	//Upload
	//$('.dropfile').dropfile();
    
});