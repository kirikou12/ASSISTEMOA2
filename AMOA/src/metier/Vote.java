package metier;

import java.io.Serializable;

public class Vote implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2581072947804946046L;

	private int id = -1;
	private Boolean vote;
	private User auteur;
	private Demande demande;
	
	public Vote(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Boolean getVote() {
		return vote;
	}

	public void setVote(Boolean vote) {
		this.vote = vote;
	}

	public User getAuteur() {
		return auteur;
	}

	public void setAuteur(User auteur) {
		this.auteur = auteur;
	}

	public Demande getDemande() {
		return demande;
	}

	public void setDemande(Demande demande) {
		this.demande = demande;
	}
	
}
