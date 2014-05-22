package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormAuth extends ActionForm{

	private static final long serialVersionUID = -4620240099028256577L;
	
	private String userName;
	private String password;	
	
	public BeanFormAuth(){
		
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
