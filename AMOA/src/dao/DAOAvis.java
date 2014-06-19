package dao;

import java.util.ArrayList;

import metier.Avis;


public interface DAOAvis {	
	Avis get(int id) throws Exception;
	void save(Avis avis) throws Exception;
	ArrayList<Avis> load() throws Exception;
}
