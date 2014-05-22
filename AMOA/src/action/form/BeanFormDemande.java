package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormDemande extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8335041293717943685L;

	private String content;
	private String title;	
	private String chapitre;
	private String demandeId;
	
	public BeanFormDemande(){	
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}	
	
	public String getChapitre() {
		return chapitre;
	}

	public void setChapitre(String chapitre) {
		this.chapitre = chapitre;
	}

	public String getDemandeId() {
		return demandeId;
	}

	public void setDemandeId(String demandeId) {
		this.demandeId = demandeId;
	}	
}
