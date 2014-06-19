package dao;

import java.util.ArrayList;

import metier.Question;


public interface DAOQuestion {	
	Question get(int id) throws Exception;
	void save(Question question) throws Exception;
	ArrayList<Question> load() throws Exception;
}
