package metier;

import java.io.Serializable;

public class Offre implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2460947158814587585L;

	private int idOffre = -1;
	private User prestataire;
	private Demande demande;
	private String description;
	private double prix;
	//
	
	public Offre(){
		
	}

	public int getIdOffre() {
		return idOffre;
	}

	public void setIdOffre(int idOffre) {
		this.idOffre = idOffre;
	}

	public User getPrestataire() {
		return prestataire;
	}

	public void setPrestataire(User prestataire) {
		this.prestataire = prestataire;
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

	public Demande getDemande() {
		return demande;
	}

	public void setDemande(Demande demande) {
		this.demande = demande;
	}
}
