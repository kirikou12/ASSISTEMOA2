package dao;

import java.util.ArrayList;

import metier.Discussion;

public interface DAODiscussion {
	void save(Discussion discussion) throws Exception;
	Discussion get(int id) throws Exception;
	ArrayList<Discussion> load() throws Exception;
}
