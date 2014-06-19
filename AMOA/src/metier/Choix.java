package metier;

import java.io.Serializable;

public class Choix implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3026354716109892462L;
	
	private int id = -1;
	private String content = "";
	private Question question; 
	
	public Choix(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

}
