package metier;

import java.io.Serializable;
import java.sql.Timestamp;

public class Notification implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4357700532221544729L;

	private int id;
	private Timestamp date;
	private String objet;
	private boolean vue;
	private User notifie;
	private User notifiant;	
	
	
	public Notification() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getObjet() {
		return objet;
	}
	public void setObjet(String objet) {
		this.objet = objet;
	}
	public boolean isVue() {
		return vue;
	}
	public void setVue(boolean vue) {
		this.vue = vue;
	}
	public User getNotifie() {
		return notifie;
	}
	public void setNotifie(User notifie) {
		this.notifie = notifie;
	}
	public User getNotifiant() {
		return notifiant;
	}
	public void setNotifiant(User notifiant) {
		this.notifiant = notifiant;
	}	
}
