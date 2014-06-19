package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Choix;
import dao.DAOChoix;

public class DAOChoixHBM implements DAOChoix {

	private static DAOChoix instance = null;

	private DAOChoixHBM() {
	}

	public static DAOChoix getInstance() {
		if (instance == null)
			instance = new DAOChoixHBM();

		return instance;
	}

	@Override
	public Choix get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Choix choix = new Choix();
		choix = (Choix) session.get(Choix.class, id);
		
		DAOHBM.getInstance().close(session);
		return choix;			
	}

	@Override
	public void save(Choix choix) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(choix.getId() == -1)
			session.save(choix);
		else
			session.update(choix);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Choix> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Choix> choix;
		choix = (ArrayList<Choix>) session.createQuery("FROM Choix").list();
		
		return choix;
	}	
}
