package action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Agregat;
import metier.Demande;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import action.form.BeanFormAgregat;
import action.form.BeanFormSelectedIds;
import dao.DAOAgregat;
import dao.DAODemande;

public class ActionAgregat extends MappingDispatchAction {

	DAOAgregat daoAgregat;
	DAODemande daoDemande;
	
	
	public ActionForward afficher(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArrayList<Agregat> agregats = daoAgregat.load();
		HttpSession session = request.getSession();
		session.removeAttribute("demandes");
		session.setAttribute("agregats", agregats);		
		
		return mapping.findForward("listeAgregat");
	}
	
	//Fusionner ou regrouper des demandes pour créer l'agregat
	public ActionForward fusion1(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		BeanFormSelectedIds beanDemandes = (BeanFormSelectedIds) form;
		Set<Demande> demandes = new HashSet<Demande>();
		 
		for (String id : beanDemandes.getSelectedIds()) {
			demandes.add(daoDemande.get(Integer.parseInt(id)));			
		}
		
		//essayer d'envoyer les données dans une rêq au lieu d'une session
		//Celle derniere cause bcp de problèmes
		HttpSession session = request.getSession();
		session.setAttribute("demandesAfusionner", demandes);
		
		return mapping.findForward("fusion2");
	}	
	public ActionForward fusion2(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		BeanFormAgregat beanAgregat = (BeanFormAgregat) form;
		
		HttpSession session = request.getSession();
		
		@SuppressWarnings("unchecked")
		Set<Demande> demandes = (Set<Demande>) session.getAttribute("demandesAfusionner");
		
		
		
		Agregat agregat = new Agregat();
		agregat.setDemandes(demandes);
		agregat.setTitre(beanAgregat.getSujet());
		agregat.setSynthese(beanAgregat.getSynthese());
		daoAgregat.save(agregat);
		
		for (Demande demande : demandes) {
			demande.setAgregat(agregat);
			daoDemande.save(demande);
		}
		
		session.setAttribute("agregat", agregat);
		session.removeAttribute("demandesAfusionner");
		return mapping.findForward("success");
	}
	
	public ActionForward afficherAgregat(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		HttpSession session = request.getSession();				
		Agregat agregat = new Agregat();
		int id = Integer.parseInt(request.getParameter("agregatId"));
		
		agregat = daoAgregat.get(id);
		
		
		
		session.setAttribute("agregat", agregat);
		return mapping.findForward("success");
	}
		
	//Les getters and setters
	public DAOAgregat getDaoAgregat() {
		return daoAgregat;
	}
	public void setDaoAgregat(DAOAgregat daoAgregat) {
		this.daoAgregat = daoAgregat;
	}
	
	public DAODemande getDaoDemande() {
		return daoDemande;
	}
	public void setDaoDemande(DAODemande daoDemande) {
		this.daoDemande = daoDemande;
	}

}
