$(document).ready(function() {
	
	

	
	//Gestion de vote
	$('.voter').click(function(){
		var context = $(this).attr('context');
		var demandeId = $(this).attr('idDemande');
		var vote = $(this).attr('value');
		$.ajax({
			   type: "POST",
			   url: context+"/voterDemande.do",
			   data: "id="+demandeId+"&vote="+vote,
			   success: function(msg){	
				   if(msg != "")
					   alert(msg);				   
			   }
			 });
		
		//$(this).off(); Désactiver un lien
	});
	//Gestion de vote: FIN
	
	//Gestion de suivi d'une demande
	$('#suivreLink').click(function(){
		var demandeId = $(this).attr('demandeId');
		$.ajax({
			   type: "POST",
			   url: "/Cahier_de_charge/suivreDemande.do",
			   data: "demandeId="+demandeId,
			   success: function(msg){					  
				  $("#suivreLink").hide();  			   
			   }
			 });
		
		//$(this).off(); Désactiver un lien
	});
	//Gestion de suivi d'une demande: FIN
	
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
	
	//Gestion des commentaires
	$("#submitComment").click(
			function() {
				$("#formComment").ajaxSubmit(
						{
							error : function() {
								alert("Theres an error with AJAX");
							},
							beforeSubmit : function() {
							},
							success : function(e) {	
								$('#formComment').reset();
								$("#myComment").append(
										"<div id=\"comment\">" + e + "</div>")
										.hide().slideDown(600);								
							}
						});
				
			});
	
	
	/*
	 * Function to add in jquery librery, it allows to reset a form.
	 	jQuery.fn.reset = function () {
		  $(this).each (function() { this.reset(); });
		}
	 */
	//Gestion des commentaires: FIN
	
	
	//Create a group 
    $('.mybox').click(function(){
      var monurl = $(this).attr('url');		      
      var montitle = $(this).attr('title');
      /*
      I guess $('#dialog-confirm').attr("title", "Message"); doesn't work the second time because jQuery UI Dialog already made changes to the actual DOM. So changing the title attribute of the div doesn't do anything
      */
      $("#monid").load(monurl, function() {
          $(this).dialog({
        	 title: montitle,
             height: 'auto',
             width:'auto',
             modal: true,
             position: 'top',
             overlay: {
                     backgroundColor: '#000',
                     opacity: 0.5
             },
             buttons: {
                'Envoyer': function() {
                    $("#myForm").ajaxSubmit({                                                             
                           error: function(){ 
                                   alert("theres an error with AJAX");
                           },
                           beforeSubmit: function(){
                        	    $("#loader").show();
                           },
                           success: function(e){
                        	   $("#loader").hide();
						   		$("#rep").fadeIn(1100).html(e).fadeOut(900);
                           }
                    });
                    $(this).dialog('close');
                },
                Cancel: function() {
                        $(this).dialog('close');
                }
             }
          });
      });
	});
  //Create a group: FIN 
    
    
    //Mouseover/Mouseout une demande
    $( "#contenuDemande" ).mouseover(function() {
    	$("#modifier").show();
    });
    $( ".contenu" ).mouseout(function() {
    	$("#modifier").hide();
    });
    
    //Mouseover/Mouseout le pourcentage
    $( "#pourcentage" ).mouseover(function() {
    	$("#pourcent").show();
    });
    $( ".contenu" ).mouseout(function() {
    	$("#pourcentage").hide();
    });
    
    
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
	$('.dropfile').dropfile();
    
});