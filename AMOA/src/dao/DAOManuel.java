package dao;

import java.util.ArrayList;

import metier.Manuel;


public interface DAOManuel{

	Manuel get(int id) throws Exception;
	void save(Manuel manuel) throws Exception;
	ArrayList<Manuel> load() throws Exception;
}
