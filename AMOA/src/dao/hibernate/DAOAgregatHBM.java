package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Agregat;
import dao.DAOAgregat;

public class DAOAgregatHBM implements DAOAgregat {

	private static DAOAgregat instance = null;

	private DAOAgregatHBM() {
	}

	public static DAOAgregat getInstance() {
		if (instance == null)
			instance = new DAOAgregatHBM();

		return instance;
	}

	@Override
	public Agregat get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Agregat agregat = new Agregat();
		agregat = (Agregat) session.get(Agregat.class, id);
		
		DAOHBM.getInstance().close(session);
		return agregat;			
	}

	@Override
	public void save(Agregat agregat) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(agregat.getId() == -1)
			session.save(agregat);
		else
			session.update(agregat);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Agregat> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Agregat> agregats;
		agregats = (ArrayList<Agregat>) session.createQuery("FROM Agregat").list();
		
		return agregats;
	}	
}
