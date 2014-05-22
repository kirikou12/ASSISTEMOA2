package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormAgregat extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5535647030855398085L;

	private String sujet;
	private String synthese;
	
	public BeanFormAgregat(){
		
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}

	public String getSynthese() {
		return synthese;
	}

	public void setSynthese(String synthese) {
		this.synthese = synthese;
	}
	
	
}
