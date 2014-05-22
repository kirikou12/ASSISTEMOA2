package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Chapitre;
import metier.Manuel;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.DAOManuel;
import dao.hibernate.DAOManuelHBM;

public class ActionChargerChapitre extends Action {

	private static DAOManuel daoManuel = DAOManuelHBM.getInstance();
	List<Chapitre> chapitres;
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		chapitres = new ArrayList<Chapitre>();
		Manuel manuel = daoManuel.get(2);
		@SuppressWarnings("unchecked")
		List<Chapitre> chps = manuel.getChapitres();							
		for (Chapitre chapitre : chps) {
			affciherChapitre(chapitre);
		}
		
		request.setAttribute("chapitres", chapitres);
		return null;
	}

	private void affciherChapitre(Chapitre chp){
		chapitres.add(chp);
		@SuppressWarnings("unchecked")
		List<Chapitre> chps = chp.getSousChapitres();
		if(chps!=null){
			for (Chapitre chapitre : chps) {
				affciherChapitre(chapitre);
			}
		}			
	}
}
