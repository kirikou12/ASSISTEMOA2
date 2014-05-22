package dao;

import metier.Offre;

public interface DAOOffre {
	void save(Offre offre) throws Exception;
	Offre get(int id) throws Exception;
}
