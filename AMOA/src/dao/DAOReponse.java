package dao;

import metier.Reponse;

public interface DAOReponse {
	
	void save(Reponse reponse) throws Exception;
	Reponse get(int id) throws Exception;

}
