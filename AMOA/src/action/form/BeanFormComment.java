package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormComment extends ActionForm {

	private static final long serialVersionUID = 6125177934731742419L;

	private String comment;
	
	
	public BeanFormComment(){
		
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

}
