package metier;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Agregat implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9223152182139134788L;

	private int id = -1;
	private Set<Demande> demandes = new HashSet<Demande>();
	private String titre;
	private String synthese;
	
	public Agregat(){
		
	}

	public Set<Demande> getDemandes() {
		return demandes;
	}

	public void setDemandes(Set<Demande> demandes) {
		this.demandes = demandes;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getSynthese() {
		return synthese;
	}

	public void setSynthese(String synthese) {
		this.synthese = synthese;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}	
}
