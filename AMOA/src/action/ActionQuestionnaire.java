package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import action.form.BeanFormQuestion;

public class ActionQuestionnaire extends MappingDispatchAction {

	
	
	public ActionForward create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		BeanFormQuestion beanQt = (BeanFormQuestion) form;
		System.out.println(beanQt.getQuestion());
		System.out.println(beanQt.getMultipleChoice());
				
		String[] propositions = beanQt.getPropositions();
		
		for (String val : propositions) {
			System.out.println(val);
		}
		
		return null;
	}		
}
