package action.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public class BeanFormAuth extends ActionForm{

	private static final long serialVersionUID = -4620240099028256577L;
	
	private String userName;
	private String password;	
	
	public BeanFormAuth(){
		
	}


	

	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		
		ActionErrors errors = new ActionErrors();
		if(userName.trim().equals(""))
			errors.add("WrongUserName", new ActionMessage("username.error"));
		
		
		return errors;
	}




	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}	
}
