package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Agregat;
import metier.File;
import dao.DAOAgregat;
import dao.DAOFile;

public class DAOFileHBM implements DAOFile {

	private static DAOFile instance = null;

	private DAOFileHBM() {
	}

	public static DAOFile getInstance() {
		if (instance == null)
			instance = new DAOFileHBM();

		return instance;
	}

	@Override
	public File get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		File file = new File();
		file = (File) session.get(File.class, id);
		
		DAOHBM.getInstance().close(session);
		return file;			
	}

	@Override
	public void save(File file) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(file.getId() == -1)
			session.save(file);
		else
			session.update(file);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<File> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<File> files;
		files = (ArrayList<File>) session.createQuery("FROM File").list();
		
		return files;
	}

	@Override
	public void delete(File file) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
			session.delete(file);
		DAOHBM.getInstance().close(session);
	}	
}
