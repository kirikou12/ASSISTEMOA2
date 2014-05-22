package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.AutoCompleteData;
import metier.User;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.google.gson.Gson;

import dao.DAOUser;
import dao.hibernate.DAOUserHBM;

public class ActionUploadMembres extends Action {

	DAOUser daoUser = DAOUserHBM.getInstance();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ArrayList<User> users = daoUser.load();
		
		Gson gson = new Gson();
		
		//HashMap<String, String> map = new HashMap<String, String>();
        
		
		response.setContentType("application/json");
		final String param = request.getParameter("term");
        final List<AutoCompleteData> result = new ArrayList<AutoCompleteData>();
        for (final User user : users) {
        	if (user.getFirstNam().toLowerCase().startsWith(param.toLowerCase())) {
                result.add(new AutoCompleteData(user.getFirstNam(), user.getFirstNam(), user.getId()));
            }        	         
        }
        response.getWriter().write(gson.toJson(result));
		
        return null;
	}

}
