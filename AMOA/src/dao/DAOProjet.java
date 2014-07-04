package dao;

import java.util.ArrayList;

import metier.Projet;


public interface DAOProjet {	
	Projet get(int id) throws Exception;
	void save(Projet projet) throws Exception;
	ArrayList<Projet> load() throws Exception;
}
