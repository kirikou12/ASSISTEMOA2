package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormChapitre extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 250924503551684455L;

	private String nom;
	
	public BeanFormChapitre(){
		
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
}
