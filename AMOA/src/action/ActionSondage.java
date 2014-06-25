package action;

import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Choix;
import metier.Question;
import metier.Sondage;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import outils.Outils;
import action.form.BeanFormQuestion;
import action.form.BeanFormQuestionnaire;
import action.form.BeanFormSondage;
import dao.DAOChoix;
import dao.DAOQuestion;
import dao.DAOReaction;
import dao.DAOSondage;

public class ActionSondage extends MappingDispatchAction {

	private DAOQuestion daoQuestion;
	private DAOSondage daoSondage;
	private DAOChoix daoChoix;
	private DAOReaction daoReaction;
	
	public ActionForward sonder(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		BeanFormQuestionnaire bean = (BeanFormQuestionnaire) form;
		
		for (String s : bean.getSingleChoicesSelected()) {
			System.out.println(s);
		}
		for (String s : bean.getMultipleChoicesSelected()) {
			System.out.println(s);
		}
		
		return mapping.findForward("success");
	}
	
	public ActionForward show(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		Sondage sondage = daoSondage.get(1);
		request.setAttribute("sondageEnCours", sondage);
		return mapping.findForward("success");
	}
	
	
	public ActionForward ajoutQuestion(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		BeanFormQuestion bean = (BeanFormQuestion) form;
		Sondage sondage = (Sondage) session.getAttribute("sondageEncours");
		
		Question qt = new Question();
		qt.setContent(bean.getQuestion());
		qt.setMultipleChoice(bean.getMultipleChoice());
		qt.setSondage(sondage);
		daoQuestion.save(qt);
		sondage.addQuestion(qt);
		//daoSondage.save(sondage);
		
		String[] propositions = bean.getPropositions();
		
		Set<Choix> listChoix = new HashSet<Choix>();
		for (String val : propositions) {
			Choix choix = new Choix();
			choix.setContent(val);
			choix.setQuestion(qt);
			
			daoChoix.save(choix);
			listChoix.add(choix);
		}		
				
		daoQuestion.save(qt);
				
		return mapping.findForward("success");
	}
	
	public ActionForward create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(200*60);
		BeanFormSondage bean = (BeanFormSondage) form;
		
		Sondage sondage = new Sondage();
		sondage.setAbout(bean.getSujet());
		sondage.setOuverture(Outils.StringToTimeStamp(bean.getDebut()));
		sondage.setFin(Outils.StringToTimeStamp(bean.getFin()));
		daoSondage.save(sondage);
		
		session.setAttribute("sondageEncours", sondage);
		return mapping.findForward("success");
	}
	
	public DAOQuestion getDaoQuestion() {
		return daoQuestion;
	}


	public void setDaoQuestion(DAOQuestion daoQuestion) {
		this.daoQuestion = daoQuestion;
	}


	public DAOSondage getDaoSondage() {
		return daoSondage;
	}


	public void setDaoSondage(DAOSondage daoSondage) {
		this.daoSondage = daoSondage;
	}


	public DAOChoix getDaoChoix() {
		return daoChoix;
	}


	public void setDaoChoix(DAOChoix daoChoix) {
		this.daoChoix = daoChoix;
	}

	public DAOReaction getDaoReaction() {
		return daoReaction;
	}

	public void setDaoReaction(DAOReaction daoReaction) {
		this.daoReaction = daoReaction;
	}

}
