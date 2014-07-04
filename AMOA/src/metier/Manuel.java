package metier;

import java.io.Serializable;
import java.util.List;

public class Manuel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4548707528114469652L;

	private int id = -1;
	private String titre;
	private List chapitres;
	
	public Manuel(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public List getChapitres() {
		return chapitres;
	}

	public void setChapitres(List chapitres) {
		this.chapitres = chapitres;
	}
}
