package action.form;

import java.util.List;

import org.apache.struts.action.ActionForm;

public class IDSBean extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String[] titres;


	public IDSBean(){
		
	}

	public String[] getTitres() {
		return titres;
	}

	public void setTitres(String[] titres) {
		this.titres = titres;
	}
}
