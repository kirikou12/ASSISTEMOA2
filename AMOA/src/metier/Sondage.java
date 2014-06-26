package metier;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

public class Sondage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id = -1;
	private String about;
	private Timestamp ouverture;
	private Timestamp fin;
	private Set<Question> questions = new HashSet<Question>();
	
	public Sondage(){
		
	}

	public Set<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}
	
	public void addQuestion(Question qt){
		this.questions.add(qt);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public Timestamp getFin() {
		return fin;
	}

	public void setFin(Timestamp fin) {
		this.fin = fin;
	}

	public Timestamp getOuverture() {
		return ouverture;
	}

	public void setOuverture(Timestamp ouverture) {
		this.ouverture = ouverture;
	}
}
