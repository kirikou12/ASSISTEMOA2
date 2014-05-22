package metier;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

public class Comment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2762267194330491899L;

	private int commentId = -1;
	private String content;
	private User author;
	private Demande demande;
	private Timestamp date;
	private Set<Reponse> reponses = new HashSet<Reponse>();
	
	public Comment(){}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User user) {
		this.author = user;
	}

	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	
	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Demande getDemande() {
		return demande;
	}

	public void setDemande(Demande demande) {
		this.demande = demande;
	}

	public Set<Reponse> getReponses() {
		return reponses;
	}

	public void setReponses(Set<Reponse> reponses) {
		this.reponses = reponses;
	}
}
