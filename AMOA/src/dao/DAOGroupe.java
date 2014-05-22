package dao;

import java.util.ArrayList;

import metier.Groupe;

public interface DAOGroupe {
	 void save(Groupe groupe) throws Exception;
	 ArrayList<Groupe> load() throws Exception;
	 Groupe get(int id) throws Exception;
}
