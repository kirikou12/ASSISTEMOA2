package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Groupe;
import dao.DAOGroupe;

public class DAOGroupeHBM implements DAOGroupe {

	private static DAOGroupe instance = null;
	
	private DAOGroupeHBM(){
		
	}
	
	public static DAOGroupe getInstance() {
		if (instance == null)
			instance = new DAOGroupeHBM();

		return instance;
	}
	
	@Override
	public void save(Groupe groupe) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
			session.save(groupe);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Groupe> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Groupe> groupes = (ArrayList<Groupe>)	
				session.createQuery("FROM Groupe").list();
		DAOHBM.getInstance().close(session);
		return groupes;
	}

	@Override
	public Groupe get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		Groupe groupe = (Groupe) session.get(Groupe.class, id);
		DAOHBM.getInstance().close(session);
		return groupe;
	}

}
