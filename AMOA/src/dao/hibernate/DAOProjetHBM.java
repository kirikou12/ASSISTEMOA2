package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Projet;
import dao.DAOProjet;

public class DAOProjetHBM implements DAOProjet {

	private static DAOProjet instance = null;

	private DAOProjetHBM() {
	}

	public static DAOProjet getInstance() {
		if (instance == null)
			instance = new DAOProjetHBM();

		return instance;
	}

	@Override
	public Projet get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Projet projet = new Projet();
		projet = (Projet) session.get(Projet.class, id);
		
		DAOHBM.getInstance().close(session);
		return projet;			
	}

	@Override
	public void save(Projet projet) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(projet.getId() == -1)
			session.save(projet);
		else
			session.update(projet);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Projet> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Projet> projets;
		projets = (ArrayList<Projet>) session.createQuery("FROM Projet").list();
		
		return projets;
	}	
}
