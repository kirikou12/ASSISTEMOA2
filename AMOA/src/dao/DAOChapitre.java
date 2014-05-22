package dao;

import java.util.ArrayList;

import metier.Chapitre;

public interface DAOChapitre{

	Chapitre get(int id) throws Exception;
	void save(Chapitre chapitre) throws Exception;
	ArrayList<Chapitre> load() throws Exception;
}
