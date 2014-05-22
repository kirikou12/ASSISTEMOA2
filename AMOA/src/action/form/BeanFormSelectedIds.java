package action.form;

import org.apache.struts.action.ActionForm;

public class BeanFormSelectedIds extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2433270804097251059L;

	private String[] selectedIds;
	
	
	public BeanFormSelectedIds(){		
	}


	public String[] getSelectedIds() {
		return selectedIds;
	}


	public void setSelectedIds(String[] selectedIds) {
		this.selectedIds = selectedIds;
	}

	
	
}
