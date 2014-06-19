package dao;

import java.util.ArrayList;

import metier.Reaction;


public interface DAOReaction {	
	Reaction get(int id) throws Exception;
	void save(Reaction reaction) throws Exception;
	ArrayList<Reaction> load() throws Exception;
}
