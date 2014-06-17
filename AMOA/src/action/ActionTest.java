package action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import action.form.IDSBean;

public class ActionTest extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		/*IDSBean bean = (IDSBean) form;
		String[] ids = bean.getMembres().split(",");
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
		*/
		IDSBean bean = (IDSBean) form;
		String[] titres = bean.getTitres();
		
		for (String val : titres) {
			System.out.println(val);
		}
		
		
		return null;
	}

}
