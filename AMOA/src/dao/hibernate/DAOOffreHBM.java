package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Offre;
import dao.DAOOffre;

public class DAOOffreHBM implements DAOOffre {

	private static DAOOffre instance = null;

	private DAOOffreHBM() {
	}

	public static DAOOffre getInstance() {
		if (instance == null)
			instance = new DAOOffreHBM();

		return instance;
	}

	@Override
	public Offre get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Offre Offre = new Offre();
		Offre = (Offre) session.get(Offre.class, id);
		
		DAOHBM.getInstance().close(session);
		return Offre;			
	}

	@Override
	public void save(Offre Offre) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(Offre.getIdOffre() == -1)
			session.save(Offre);
		else
			session.update(Offre);
		DAOHBM.getInstance().close(session);
	}

	
}
