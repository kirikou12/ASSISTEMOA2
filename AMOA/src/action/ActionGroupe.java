package action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Groupe;
import metier.User;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import action.form.BeanFormGroupe;
import action.form.BeanFormSelectedIds;
import dao.DAOGroupe;
import dao.DAOUser;

public class ActionGroupe extends MappingDispatchAction {

	private DAOGroupe daoGroupe;
	private DAOUser daoUser;
	
	
	public ActionForward create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		
		BeanFormGroupe beanGroupe = (BeanFormGroupe) form;	
		
		String[] ids = beanGroupe.getMembres().split(",");
		ArrayList<String> list = new ArrayList<String>();
		
		for (String string : ids) {
			list.add(string);
		}
		//Ici pour éliminer les doublons si qqn a été séléctionné twice
		Set<String> mySet = new HashSet<String>(list);
		List<String> list2 = new ArrayList<String>(mySet);
		//List2 contient les ids des users slectionnés, 
		//il faut leur envoyer des notifs et des qu'ils les acceptent 
		//ils se rajoutent au groupe 
		for (String string : list2) {
			System.out.println(string.trim());
		}
		
		/*User user = (User)request.getSession().getAttribute("membre");
		
		
		Groupe groupe = new Groupe();
		
		groupe.setAuthor(user);
		groupe.setEntitled(beanGroupe.getNom());
		groupe.setDescription(beanGroupe.getObjectif());	
		
		daoGroupe.save(groupe);
		
		PrintWriter out = response.getWriter();
		out.println( "<h4>Groupe a été créé avec succès!</h4>" );*/
		
		return null;
	}
	
	public ActionForward afficherList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		HttpSession session = request.getSession();
		session.setAttribute("groupes", (ArrayList<Groupe>)daoGroupe.load());
			
			return mapping.findForward("listeGroupe");
	}
	
	public ActionForward afficher(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String id = (String) request.getParameter("groupeId");	
		HttpSession session = request.getSession();
		session.setAttribute("groupe", daoGroupe.get(Integer.parseInt(id)));
			
		return mapping.findForward("SUCCESS");
	}
	
	public ActionForward inviter(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		BeanFormSelectedIds beanIds = (BeanFormSelectedIds) form;
				//Gérer l'invitation des membres			
		return mapping.findForward("SUCCESS");
	}

	
	//Getters and setters
	public DAOGroupe getDaoGroupe() {
		return daoGroupe;
	}
	public void setDaoGroupe(DAOGroupe daoGroupe) {
		this.daoGroupe = daoGroupe;
	}

	public DAOUser getDaoUser() {
		return daoUser;
	}

	public void setDaoUser(DAOUser daoUser) {
		this.daoUser = daoUser;
	}
}
