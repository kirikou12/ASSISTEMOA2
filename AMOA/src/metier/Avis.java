package metier;

import java.io.Serializable;

public class Avis implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9223152182139134788L;

	private int id = -1;	
	private String content;
	private User author;
	private Question question;
	
	public Avis(){
		
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public User getAuthor() {
		return author;
	}


	public void setAuthor(User author) {
		this.author = author;
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
