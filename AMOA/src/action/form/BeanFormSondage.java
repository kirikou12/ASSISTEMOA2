package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormSondage extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5535647030855398085L;

	private String sujet;
	private String debut;
	private String fin;
	
	public String getDebut() {
		return debut;
	}

	public void setDebut(String debut) {
		this.debut = debut;
	}

	public String getFin() {
		return fin;
	}

	public void setFin(String fin) {
		this.fin = fin;
	}

	public BeanFormSondage(){
		
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}	
}
