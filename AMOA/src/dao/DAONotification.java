package dao;

import java.util.ArrayList;

import metier.Notification;


public interface DAONotification {	
	Notification get(int id) throws Exception;
	void save(Notification notification) throws Exception;
	ArrayList<Notification> load() throws Exception;
}
