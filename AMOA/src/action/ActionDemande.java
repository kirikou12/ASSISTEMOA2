package action;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Demande;
import metier.Discussion;
import metier.User;
import metier.Vote;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;
import org.hibernate.Session;

import action.form.BeanFormDemande;
import action.form.DemandeBean;
import dao.DAODemande;
import dao.DAODiscussion;
import dao.DAOGroupe;
import dao.DAOUser;
import dao.DAOVote;
import dao.hibernate.DAOHBM;

public class ActionDemande extends MappingDispatchAction{

	private DAODemande daoDemande;
	private DAOVote daoVote;
	private DAOUser daoUser;
	private DAOGroupe daoGroupe;
	private DAODiscussion daoDiscussion;
	
	public ActionForward create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		User auteur = (User)request.getSession().getAttribute("membre");
		User respo = daoUser.get(2);
		
		DemandeBean demandeBean = (DemandeBean) form;
		Demande demande = new Demande();
		demande.setSujet(demandeBean.getSujet());
		demande.setDescription(demandeBean.getDescription());
		Date date = new Date();
		demande.setCree(new Timestamp(date.getTime()));
		demande.setProjet(demandeBean.getProjet());
		demande.setTracker(demandeBean.getTracker());
		demande.setStatut(demandeBean.getStatut());
		demande.setAuteur(auteur);
		demande.setPriorite("pas trop urgent");
		demande.setCriticite("néant");
		demande.setVersionCible("1.1");
		demande.setVersionApplication("1.0");
		demande.setAssigneA(respo);		
		
		demande = daoDemande.save(demande);
		System.out.println(demande.getDemandeId());
		
		Discussion discussion = new Discussion();
		discussion.setGroupe(daoGroupe.get(Integer.parseInt(request.getParameter("groupeId"))));
		discussion.setObjet(demande);
		daoDiscussion.save(discussion);
		session.setAttribute("discussion", discussion);
				
		return mapping.findForward("succes");
	} 
	
	//Affichage racourcie(rapide) d'une demande
	public ActionForward affichage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		
		HttpSession session = request.getSession();
		Demande demande = null;
		
		//Cas d'affichage d'une demande en détails (avec les commentaires... etc.)
		if(request.getParameter("demandeId")!=null){
			demande = (Demande) daoDemande.get(Integer.parseInt(request.getParameter("demandeId")));
			session.setAttribute("demande", demande);			
			return mapping.findForward("showComments");
		}
		
		//Cas d'affichage d'une demande sans détails(La description seulement)
		if(request.getParameter("data")!=null){
			demande = (Demande) daoDemande.get(Integer.parseInt(request.getParameter("data")));
			PrintWriter out = response.getWriter();
			out.println(demande.getDescription());
		}	
			
				
		return null;
	}
	
	
	//Affichage standard des demandes
	public ActionForward affichageStandard(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArrayList<Demande> demandes = daoDemande.load();
		
		ArrayList<Demande> demandes2 = new ArrayList<Demande>();
		for (Demande demande : demandes) {
			if(demande.getAgregat() == null)
				
				demandes2.add(demande);
		}
		
		HttpSession session = request.getSession();
		session.removeAttribute("agregats");
		session.setAttribute("demandes", demandes2);	
		
		return mapping.findForward("listeDemande");
	}	
	
	//Suivre une demande: prestataire
	public ActionForward suivre(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String myDemandeId = request.getParameter("demandeId");
		Demande demande = (Demande) daoDemande.get(Integer.parseInt(myDemandeId));
		User membre = (User)request.getSession().getAttribute("membre");
		demande.setAssigneA(membre);
		daoDemande.save(demande);
		
		return null;
	}	
	
	//Voter sur une demande
	public ActionForward voter(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		Demande demande = daoDemande.get(id);
		User user = (User)request.getSession().getAttribute("membre");
		PrintWriter out = response.getWriter();
		
		Session	session = DAOHBM.getInstance().connect();
		session.update(demande);
		if(!demande.hasVoted(user)){
			Vote vote = new Vote();
			vote.setDemande(demande);
			vote.setAuteur(user);
			if(request.getParameter("vote").equals("Pour"))
				vote.setVote(true);
			else
				vote.setVote(false);
			
			daoVote.save(vote);
					
			demande.setVote(vote);
			daoDemande.save(demande);
			
			out.println( "Votre vote a été pris en copmte!" );
		}
		else{
			for (Vote vote : demande.getVotes()) {
				if(vote.getAuteur().getId() == user.getId()){
					boolean voteVal;  
					if(request.getParameter("vote").equals("Pour"))
						voteVal = true;
					else
						voteVal = false;					
					if(vote.getVote()!=voteVal){
						vote.setVote(voteVal);
						session.update(vote);
						out.println( "Votre vote a été pris en copmte!" );
					}
					else					
						out.println( "Vous avez déjà voté!" );
				}
			}	
		}				
			
		
		DAOHBM.getInstance().close(session);
				
		return null;
	}
	
	//Affichage detaillé d'une demande pour qu'elle soit modifier
	public ActionForward affichage2(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		//HttpSession session = request.getSession();
		Demande demande = null;
		demande = (Demande) daoDemande.get(Integer.parseInt(request.getParameter("demandeId")));
		request.setAttribute("demande", demande);
		return mapping.findForward("success");
	}
	
	//Enregisrer les modifications effectuées sur une demande
	public ActionForward modifier(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		BeanFormDemande beanDemande = (BeanFormDemande) form;
		System.out.println(" Titre de la demande: " + beanDemande.getTitle()
				+ ",\t num: " + beanDemande.getDemandeId() + "\n Contenu: \n"
				+ beanDemande.getContent() + "\n Chapitre: "
				+ beanDemande.getChapitre());
		
		Demande demande = this.daoDemande.get(Integer.parseInt(beanDemande.getDemandeId()));
		demande.setDescription(beanDemande.getContent());
		demande.setSujet(beanDemande.getTitle());
		this.daoDemande.save(demande);
		return mapping.findForward("success");
	}
	
	//Trier les demandes et les afficher dans l'ordre du plus prioritaire au moins prioritaire
	public ActionForward trierParPriorite(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArrayList<Demande> demandes;
		demandes = daoDemande.load();
		Demande tampon = null;
		for(int j = 0; j < demandes.size()-1; j++){
			for (int i = 1; i < demandes.size()-1; i++) {
				if((demandes.get(j).getVoteUp()) 
						< (demandes.get(i).getVoteUp())){
					tampon = demandes.get(i);
					demandes.set(i, demandes.get(j));
					demandes.set(j, tampon);
				}
			}
		}
		
		
		HttpSession session = request.getSession();
		session.removeAttribute("agregats");
		session.removeAttribute("demandes");
		session.setAttribute("demandes", demandes);	
		
		return mapping.findForward("success");
	}
	
	
	
	//Les getters and setters
	public DAODemande getDaoDemande() {
		return daoDemande;
	}
	public void setDaoDemande(DAODemande daoDemande) {
		this.daoDemande = daoDemande;
	}

	public DAOVote getDaoVote() {
		return daoVote;
	}
	public void setDaoVote(DAOVote daoVote) {
		this.daoVote = daoVote;
	}

	public DAOUser getDaoUser() {
		return daoUser;
	}

	public void setDaoUser(DAOUser daoUser) {
		this.daoUser = daoUser;
	}

	public DAOGroupe getDaoGroupe() {
		return daoGroupe;
	}

	public void setDaoGroupe(DAOGroupe daoGroupe) {
		this.daoGroupe = daoGroupe;
	}

	public DAODiscussion getDaoDiscussion() {
		return daoDiscussion;
	}

	public void setDaoDiscussion(DAODiscussion daoDiscussion) {
		this.daoDiscussion = daoDiscussion;
	}
}
