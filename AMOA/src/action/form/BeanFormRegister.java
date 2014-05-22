package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormRegister extends ActionForm{

	private static final long serialVersionUID = -4620240099028256577L;
	private String firstNam;
	private String lastName;
	private String email;
	private String userName;
	private String password;
	private String website;
	
	
	public BeanFormRegister(){
		
	}


	public String getFirstNam() {
		return firstNam;
	}


	public void setFirstNam(String firstNam) {
		this.firstNam = firstNam;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
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


	public String getWebsite() {
		return website;
	}


	public void setWebsite(String website) {
		this.website = website;
	}
	
}
