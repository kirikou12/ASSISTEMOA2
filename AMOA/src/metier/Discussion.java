package metier;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Discussion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7463229988016662126L;

	private int id = -1;
	private Demande objet; //Objet de la discussion
	private Set<Comment> comments = new HashSet<Comment>();
	private Groupe groupe;
	
	public Discussion(){}

	public Demande getObjet() {
		return objet;
	}

	public void setObjet(Demande objet) {
		this.objet = objet;
	}

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Groupe getGroupe() {
		return groupe;
	}

	public void setGroupe(Groupe groupe) {
		this.groupe = groupe;
	}	
}
