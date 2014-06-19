package metier;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Sondage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id = -1;
	private String about;
	private Timestamp ouverture;
	private Timestamp fin;
	private List<Question> questions;
	
	public Sondage(){
		
	}

	public List<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(List<Question> questions) {
		this.questions = questions;
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
