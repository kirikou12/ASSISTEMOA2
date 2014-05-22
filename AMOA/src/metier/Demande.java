package metier;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

public class Demande implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4242244546274119969L;
	
	private int demandeId = -1;	
	private int demandeIdRMINE;	
	private String projet;
	private String sujet;
	private String description;	
	private String tracker;
	private String statut;
	private String priorite;
	private String criticite;	
	private User auteur;
	private User assigneA;		
	private String versionCible;
	private String versionApplication;
	private Timestamp echeance;
	private int tempsEstime;
	private double pourcentageRealise;
	private Timestamp cree; 
	private Timestamp ferme;
	private Timestamp miseAJours;// deriniere mise à jours
	private Timestamp debut;
	private Agregat agregat;
	private Set<Comment> comments = new HashSet<Comment>();
	private int tempsVendu; //Durée d'une assistance (type de demande: assistance)
	private Set<Vote> votes = new HashSet<Vote>();
	private Set manuels;
	private Set chapitres;
	private Set<File> pieceJointes = new HashSet<File>();
	
	
	public Set getManuels() {
		return manuels;
	}

	public void setManuels(Set manuels) {
		this.manuels = manuels;
	}

	public Set getChapitres() {
		return chapitres;
	}

	public void setChapitres(Set chapitres) {
		this.chapitres = chapitres;
	}

	
	public Demande(){		
	}

	public boolean hasVoted(User u){
		for (Vote vote : votes) {
			if(vote.getAuteur().equals(u))
				return true;
		}
		
		return false;
	}


	public int getDemandeIdRMINE() {
		return demandeIdRMINE;
	}



	public void setDemandeIdRMINE(int demandeIdRMINE) {
		this.demandeIdRMINE = demandeIdRMINE;
	}



	public String getProjet() {
		return projet;
	}



	public void setProjet(String projet) {
		this.projet = projet;
	}



	public String getSujet() {
		return sujet;
	}



	public void setSujet(String sujet) {
		this.sujet = sujet;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
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



	public String getPriorite() {
		return priorite;
	}



	public void setPriorite(String priorite) {
		this.priorite = priorite;
	}



	public String getCriticite() {
		return criticite;
	}



	public void setCriticite(String criticite) {
		this.criticite = criticite;
	}



	public User getAuteur() {
		return auteur;
	}



	public void setAuteur(User auteur) {
		this.auteur = auteur;
	}



	public User getAssigneA() {
		return assigneA;
	}



	public void setAssigneA(User assigneA) {
		this.assigneA = assigneA;
	}



	public String getVersionCible() {
		return versionCible;
	}



	public void setVersionCible(String versionCible) {
		this.versionCible = versionCible;
	}



	public String getVersionApplication() {
		return versionApplication;
	}



	public void setVersionApplication(String versionApplication) {
		this.versionApplication = versionApplication;
	}



	public Timestamp getEcheance() {
		return echeance;
	}



	public void setEcheance(Timestamp echeance) {
		this.echeance = echeance;
	}



	public int getTempsEstime() {
		return tempsEstime;
	}



	public void setTempsEstime(int tempsEstime) {
		this.tempsEstime = tempsEstime;
	}



	public double getPourcentageRealise() {
		return pourcentageRealise;
	}



	public void setPourcentageRealise(double pourcentageRealise) {
		this.pourcentageRealise = pourcentageRealise;
	}

	public Timestamp getCree() {
		return cree;
	}

	public void setCree(Timestamp cree) {
		this.cree = cree;
	}

	public Timestamp getFerme() {
		return ferme;
	}
	public void setFerme(Timestamp ferme) {
		this.ferme = ferme;
	}
	public Timestamp getMiseAJours() {
		return miseAJours;
	}
	public void setMiseAJours(Timestamp miseAJours) {
		this.miseAJours = miseAJours;
	}
	public Timestamp getDebut() {
		return debut;
	}

	public void setDebut(Timestamp debut) {
		this.debut = debut;
	}

	public int getTempsVendu() {
		return tempsVendu;
	}

	public void setTempsVendu(int tempsVendu) {
		this.tempsVendu = tempsVendu;
	}

	public int getDemandeId() {
		return demandeId;
	}

	public void setDemandeId(int demandeId) {
		this.demandeId = demandeId;
	}



	public Set<Comment> getComments() {
		return comments;
	}



	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}



	public Set<Vote> getVotes() {
		return votes;
	}

	public void setVotes(Set<Vote> votes) {
		this.votes = votes;
	}
	public void setVote(Vote vote){
		this.votes.add(vote);
	}

	public Agregat getAgregat() {
		return agregat;
	}

	public void setAgregat(Agregat agregat) {
		this.agregat = agregat;
	}

	//propriétés qui n'existent pas dans la base de données
	private int nbrVotes;	
	private int voteUp;
	private boolean hasVoted;
	
	/*public short getVoteUp() {
		if(this.votes.size() == 0)
			return 0;
		
		short votePour=0;
		for (Vote vote : this.votes) {
			if(vote.getVote() == true)
				votePour++;
		}
		
		return (short) ((votePour*100)/this.votes.size());
	}*/
	public int getVoteUp() {
		if(this.votes.size() == 0)
			return 0;
		
		int votePour=0;
		for (Vote vote : this.votes) {
			if(vote.getVote() == true)
				votePour++;
		}
		
		return votePour;
	}
	public int getVoteDown() {
		if(this.votes.size() == 0)
			return 0;
		
		int votePour=0;
		for (Vote vote : this.votes) {
			if(vote.getVote() == false)
				votePour++;
		}
		
		return votePour;
	}

	public void setVoteUp(short voteUp) {
		this.voteUp = voteUp;
	}

	public boolean isHasVoted() {
		return hasVoted;
	}

	public void setHasVoted(boolean hasVoted) {
		this.hasVoted = hasVoted;
	}

	public int getNbrVotes() {
		return this.votes.size();
	}

	public void setNbrVotes(int nbrVotes) {
		this.nbrVotes = nbrVotes;
	}

	public Set<File> getPieceJointes() {
		return pieceJointes;
	}

	public void setPieceJointes(Set<File> pieceJointes) {
		this.pieceJointes = pieceJointes;
	}
			
}
