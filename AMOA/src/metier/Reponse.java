package metier;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;


public class Reponse implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8689257950705788563L;

	private int reponseId = -1;
	private String content;
	private User author;
	private Comment comment;
	private Timestamp date;
	private Set<Reponse> reponses = new HashSet<Reponse>();
	
	public Reponse(){
		
	}

	public int getReponseId() {
		return reponseId;
	}

	public void setReponseId(int reponseId) {
		this.reponseId = reponseId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User author) {
		this.author = author;
	}
	
	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	public Set<Reponse> getReponses() {
		return reponses;
	}

	public void setReponses(Set<Reponse> reponses) {
		this.reponses = reponses;
	}	
}
