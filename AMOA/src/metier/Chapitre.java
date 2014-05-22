package metier;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Chapitre implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2430531751640179452L;

	private int id = -1;
	private Manuel manuel;
	private String titre;
	private int numero;
	private List sousChapitres;
	private Chapitre aChapitre;
	
	public Chapitre(){
		
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public List getSousChapitres() {
		return sousChapitres;
	}

	public void setSousChapitres(List sousChapitres) {
		this.sousChapitres = sousChapitres;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Manuel getManuel() {
		return manuel;
	}

	public void setManuel(Manuel manuel) {
		this.manuel = manuel;
	}

	
	public Chapitre getaChapitre() {
		return aChapitre;
	}

	public void setaChapitre(Chapitre aChapitre) {
		this.aChapitre = aChapitre;
	}
	
}
