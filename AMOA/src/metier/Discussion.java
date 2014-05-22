package metier;

import java.io.Serializable;
import java.util.ArrayList;

public class Discussion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7463229988016662126L;

	private Demande objet; //Objet de la discussion
	private ArrayList<Comment> comments;
	
	public Discussion(){}

	public Demande getObjet() {
		return objet;
	}

	public void setObjet(Demande objet) {
		this.objet = objet;
	}

	public ArrayList<Comment> getComments() {
		return comments;
	}

	public void setComments(ArrayList<Comment> comments) {
		this.comments = comments;
	}	
}
