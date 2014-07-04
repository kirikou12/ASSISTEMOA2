package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Projet;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import dao.DAOProjet;

public class ActionProjet extends MappingDispatchAction {

	private DAOProjet daoProjet;
	
	
	public ActionForward show(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArrayList<Projet> projets = daoProjet.load();
		HttpSession session = request.getSession();
		session.removeAttribute("demandes");
		session.setAttribute("projets", projets);		
		
		return null;
	}


	public DAOProjet getDaoProjet() {
		return daoProjet;
	}


	public void setDaoProjet(DAOProjet daoProjet) {
		this.daoProjet = daoProjet;
	}
	
}
