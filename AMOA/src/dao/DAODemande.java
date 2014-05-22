package dao;

import java.util.ArrayList;

import metier.Demande;

public interface DAODemande {
	void save(Demande demande) throws Exception;
	Demande get(int id) throws Exception;
	ArrayList<Demande> load() throws Exception;
}
