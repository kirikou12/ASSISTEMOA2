package dao;

import java.util.ArrayList;

import metier.Choix;


public interface DAOChoix {	
	Choix get(int id) throws Exception;
	void save(Choix choix) throws Exception;
	ArrayList<Choix> load() throws Exception;
}
