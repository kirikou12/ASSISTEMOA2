package dao;

import java.util.ArrayList;

import metier.User;


public interface DAOUser {	
	User get(int id) throws Exception;
	void save(User user) throws Exception;
	ArrayList<User> load() throws Exception;
	User getByName(String userName) throws Exception;
}
