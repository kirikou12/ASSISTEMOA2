package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormOffre extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7834449682174996418L;

	private String description;	
	private double prix;
	private int idDemande;
	
	public BeanFormOffre(){
		
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public int getIdDemande() {
		return idDemande;
	}

	public void setIdDemande(int idDemande) {
		this.idDemande = idDemande;
	}
	
}
