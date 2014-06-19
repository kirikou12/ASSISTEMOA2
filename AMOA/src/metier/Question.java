package metier;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Question implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6966080970010694601L;

	private int id = -1;
	private Sondage sondage;
	private Set<Choix> choix = new HashSet<Choix>();
	private Set<Avis> avis = new HashSet<Avis>();
	
	public Question(){
		
	}

	public Set<Choix> getChoix() {
		return choix;
	}

	public void setChoix(Set<Choix> choix) {
		this.choix = choix;
	}

	public Set<Avis> getAvis() {
		return avis;
	}

	public void setAvis(Set<Avis> avis) {
		this.avis = avis;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Sondage getSondage() {
		return sondage;
	}

	public void setSondage(Sondage sondage) {
		this.sondage = sondage;
	}
}
