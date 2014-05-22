package dao;

import java.util.ArrayList;

import metier.File;

public interface DAOFile{

	File get(int id) throws Exception;
	void save(File file) throws Exception;
	void delete(File file) throws Exception;
	ArrayList<File> load() throws Exception;
}
