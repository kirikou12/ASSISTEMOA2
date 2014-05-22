package action.form;

import org.apache.struts.action.ActionForm;

public class IDSBean extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String membres;

	public IDSBean(){
		
	}

	public String getMembres() {
		return membres;
	}

	public void setMembres(String membres) {
		this.membres = membres;
	}
}
