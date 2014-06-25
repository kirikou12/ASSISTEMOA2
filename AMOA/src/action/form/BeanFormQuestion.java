package action.form;


import org.apache.struts.action.ActionForm;

public class BeanFormQuestion extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = -319206446651817135L;

	private String question;
	private String[] propositions;
	private boolean multipleChoice;	
	
	public BeanFormQuestion(){
		
	}

	public String[] getPropositions() {
		return propositions;
	}

	public void setPropositions(String[] titres) {
		this.propositions = titres;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public boolean getMultipleChoice() {
		return multipleChoice;
	}

	public void setMultipleChoice(boolean multipleChoice) {
		this.multipleChoice = multipleChoice;
	}
}
