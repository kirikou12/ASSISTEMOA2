package dao.hibernate;

import java.util.ArrayList;

import metier.Avis;

import org.hibernate.Session;

import dao.DAOAvis;

public class DAOAvisHBM implements DAOAvis {

	private static DAOAvis instance = null;

	private DAOAvisHBM() {
	}

	public static DAOAvis getInstance() {
		if (instance == null)
			instance = new DAOAvisHBM();

		return instance;
	}

	@Override
	public Avis get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Avis avis = new Avis();
		avis = (Avis) session.get(Avis.class, id);
		
		DAOHBM.getInstance().close(session);
		return avis;			
	}

	@Override
	public void save(Avis avis) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(avis.getId() == -1)
			session.save(avis);
		else
			session.update(avis);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Avis> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Avis> avis;
		avis = (ArrayList<Avis>) session.createQuery("FROM Avis").list();
		
		return avis;
	}	
}
