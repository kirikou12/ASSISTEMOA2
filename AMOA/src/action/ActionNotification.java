package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Notification;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import dao.DAONotification;

public class ActionNotification extends MappingDispatchAction {

	private DAONotification daoNotification;
	
	
	public ActionForward afficher(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		Notification notif = daoNotification.get(Integer.parseInt(request.getParameter("notifId")));
		notif.setVue(true);
		
		request.setAttribute("notification", notif);
		
		return mapping.findForward("succes");
	}


	
	//Les getters and setters
	public DAONotification getDaoNotification() {
		return daoNotification;
	}


	public void setDaoNotification(DAONotification daoNotification) {
		this.daoNotification = daoNotification;
	}
	
}
