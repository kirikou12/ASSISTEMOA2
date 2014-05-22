package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Offre;
import metier.User;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import action.form.BeanFormOffre;
import dao.DAODemande;
import dao.DAOOffre;
import dao.DAOUser;

public class ActionOffre extends MappingDispatchAction {

	private DAOOffre daoOffre;
	private DAODemande daoDemande;
	private DAOUser daoUser;
	

	public ActionForward proposerOffre(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		BeanFormOffre beanOffre = (BeanFormOffre) form;
		User prestataire = (User) request.getSession().getAttribute("membre");
		
		Offre offre = new Offre();
		offre.setDemande(daoDemande.get(10));//beanOffre.getIdDemande() 
		//TODO : saisie par un tiers de toutes les offres de tous les prestataires
		offre.setDescription(beanOffre.getDescription());
		offre.setPrestataire(prestataire);
		offre.setPrix(beanOffre.getPrix());
		
		daoOffre.save(offre);
		
		return null;// on revient vers la demande qui a été ouverte
	}

	
	
	
	public DAOOffre getDaoOffre() {
		return daoOffre;
	}

	public void setDaoOffre(DAOOffre daoOffre) {
		this.daoOffre = daoOffre;
	}
	
	public DAODemande getDaoDemande() {
		return daoDemande;
	}
	public void setDaoDemande(DAODemande daoDemande) {
		this.daoDemande = daoDemande;
	}

	public DAOUser getDaoUser() {
		return daoUser;
	}

	public void setDaoUser(DAOUser daoUser) {
		this.daoUser = daoUser;
	}

}
