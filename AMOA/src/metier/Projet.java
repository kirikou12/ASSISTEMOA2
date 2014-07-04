package metier;

import java.io.Serializable;
import java.sql.Timestamp;

public class Projet implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8017024640178192801L;
	
	private int id = -1;
	private Timestamp lancement;
	private String description;
	private String titre;
	//+ une liste des objectifs
	private Manuel cahierDesCharges;
	
	public Projet(){
		
	}
	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public Manuel getCahierDesCharges() {
		return cahierDesCharges;
	}

	public void setCahierDesCharges(Manuel cahierDesCharges) {
		this.cahierDesCharges = cahierDesCharges;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public Timestamp getLancement() {
		return lancement;
	}


	public void setLancement(Timestamp lancement) {
		this.lancement = lancement;
	}
}
