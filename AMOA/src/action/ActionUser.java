package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.User;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import action.form.BeanFormAuth;
import dao.DAOUser;

public class ActionUser extends MappingDispatchAction{

	DAOUser daoUser;
	HttpSession session;
	
	public ActionForward authentification(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		session = request.getSession();
		
		BeanFormAuth beanAuth = (BeanFormAuth)	form;
		
		User membre = daoUser.getByName(beanAuth.getUserName());
		
		if(membre!=null && beanAuth.getPassword().equals(membre.getPassword())){			
			session.setAttribute("membre", membre);
			session.setAttribute("login", membre.getUserName());
			return mapping.findForward("welcome");
		}
		
		return mapping.findForward("faild");
	}
	
	public ActionForward register(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		return null;
	}
	
	public ActionForward afficherMemebres(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ArrayList<User> users = daoUser.load();
		session = request.getSession();
		session.setAttribute("users", users);
		return mapping.findForward("succes");
	}
	
	public ActionForward ajouterAmi(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		session = request.getSession();
		User user1 = daoUser.get(1);		
		User membre = (User)request.getSession().getAttribute("membre");
		membre.addAmi(user1);
		daoUser.save(membre);
		
		user1.addAmi(membre);
		daoUser.save(user1);
		
		
		return null;
	}
	public ActionForward chargerMembres(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArrayList<User> users = daoUser.load();	
		request.setAttribute("users", users);
		return null;
	}

	

	public DAOUser getDaoUser() {
		return daoUser;
	}

	public void setDaoUser(DAOUser daoUser) {
		this.daoUser = daoUser;
	}

}
