package metier;

import java.io.Serializable;

public class Reaction implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8322924795283196053L;
	private int id = -1;
	private Question question;
	private Choix choix;
	private User participant;
	
	public Reaction(){
		
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public User getParticipant() {
		return participant;
	}

	public void setParticipant(User participant) {
		this.participant = participant;
	}

	public Choix getChoix() {
		return choix;
	}

	public void setChoix(Choix choix) {
		this.choix = choix;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
