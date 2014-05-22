package dao;

import java.util.ArrayList;

import metier.Agregat;


public interface DAOAgregat {	
	Agregat get(int id) throws Exception;
	void save(Agregat agregat) throws Exception;
	ArrayList<Agregat> load() throws Exception;
}
