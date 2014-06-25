package action.form;


import org.apache.struts.action.ActionForm;

public class BeanFormQuestionnaire extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = -319206446651817135L;

	
	private String[] multipleChoicesSelected;
	private String[] singleChoicesSelected;
	
	
	public BeanFormQuestionnaire(){
		
	}



	public String[] getMultipleChoicesSelected() {
		return multipleChoicesSelected;
	}

	public void setMultipleChoicesSelected(String[] multipleChoicesSelected) {
		this.multipleChoicesSelected = multipleChoicesSelected;
	}

	public String[] getSingleChoicesSelected() {
		return singleChoicesSelected;
	}

	public void setSingleChoicesSelected(String[] singleChoicesSelected) {
		this.singleChoicesSelected = singleChoicesSelected;
	}
}
