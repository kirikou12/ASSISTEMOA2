package action.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

public class DemandeBean extends ActionForm {

	private static final long serialVersionUID = 7834449682174996418L;

	private String description;
	private String sujet;
	private String chapitre;
	private String projet;
	private String tracker;
	private String statut;
	private String groupeId;
	private FormFile files;
	
	public DemandeBean(){
		
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}

	public String getChapitre() {
		return chapitre;
	}

	public void setChapitre(String chapitre) {
		this.chapitre = chapitre;
	}

	public String getProjet() {
		return projet;
	}

	public void setProjet(String projet) {
		this.projet = projet;
	}

	public String getTracker() {
		return tracker;
	}

	public void setTracker(String tracker) {
		this.tracker = tracker;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	public FormFile getFiles() {
		return files;
	}

	public void setFiles(FormFile files) {
		this.files = files;
	}

	public String getGroupeId() {
		return groupeId;
	}

	public void setGroupeId(String groupeId) {
		this.groupeId = groupeId;
	}
	
}
