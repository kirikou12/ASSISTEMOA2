package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormGroupe extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7437557845703816585L;
	private String nom;
	private String objectif;
	private String membres;

	
	public BeanFormGroupe(){
		
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getObjectif() {
		return objectif;
	}

	public void setObjectif(String objectif) {
		this.objectif = objectif;
	}

	public String getMembres() {
		return membres;
	}

	public void setMembres(String membres) {
		this.membres = membres;
	}
}
