package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Discussion;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import dao.DAODemande;
import dao.DAODiscussion;

public class ActionDiscussion extends MappingDispatchAction {
	
	
	DAODemande daoDemande;
	DAODiscussion daoDiscussion;
	
	public ActionForward create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			
			request.setAttribute("groupeId", request.getParameter("groupeId"));
			
		return mapping.findForward("succes");
	}	
	
	public ActionForward afficherDiscussions(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArrayList<Discussion> discussions = daoDiscussion.load();
		HttpSession session = request.getSession();
		session.setAttribute("discussions", discussions);
		
		return mapping.findForward("discussions");
	}	
	
	public ActionForward afficherDiscussion(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if(request.getParameter("discussionId") != null){
			Discussion discussion = (Discussion) daoDiscussion.get(Integer.parseInt(request.getParameter("discussionId")));
			session.setAttribute("discussion", discussion);			
			return mapping.findForward("discussion");
		}
		
		return null;
	}	
		
	//Les getters and setters	
	
	public DAODemande getDaoDemande() {
		return daoDemande;
	}
	public void setDaoDemande(DAODemande daoDemande) {
		this.daoDemande = daoDemande;
	}
	public DAODiscussion getDaoDiscussion() {
		return daoDiscussion;
	}

	public void setDaoDiscussion(DAODiscussion daoDiscussion) {
		this.daoDiscussion = daoDiscussion;
	}

}
