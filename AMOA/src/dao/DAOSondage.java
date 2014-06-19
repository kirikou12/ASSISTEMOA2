package dao;

import java.util.ArrayList;

import metier.Sondage;


public interface DAOSondage {	
	Sondage get(int id) throws Exception;
	void save(Sondage sondage) throws Exception;
	ArrayList<Sondage> load() throws Exception;
}
