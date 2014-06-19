package dao.hibernate;

import java.util.ArrayList;

import metier.Sondage;

import org.hibernate.Session;

import dao.DAOSondage;

public class DAOSondageHBM implements DAOSondage {

	private static DAOSondage instance = null;

	private DAOSondageHBM() {
	}

	public static DAOSondage getInstance() {
		if (instance == null)
			instance = new DAOSondageHBM();

		return instance;
	}

	@Override
	public Sondage get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Sondage sondage = new Sondage();
		sondage = (Sondage) session.get(Sondage.class, id);
		
		DAOHBM.getInstance().close(session);
		return sondage;			
	}

	@Override
	public void save(Sondage sondage) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(sondage.getId() == -1)
			session.save(sondage);
		else
			session.update(sondage);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Sondage> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Sondage> sondages;
		sondages = (ArrayList<Sondage>) session.createQuery("FROM Sondage").list();
		
		return sondages;
	}	
}
