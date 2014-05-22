package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Chapitre;
import dao.DAOChapitre;

public class DAOChapitreHBM implements DAOChapitre {

	private static DAOChapitre instance = null;
	private DAOChapitreHBM(){
		
	}
	public static DAOChapitre getInstance(){
		if(instance == null)
			instance = new DAOChapitreHBM();
		return instance;
	}
	
	@Override
	public Chapitre get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
			Chapitre chapitre = (Chapitre) session.get(Chapitre.class, id);
		DAOHBM.getInstance().close(session);
		return chapitre;
	}

	@Override
	public void save(Chapitre chapitre) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(chapitre.getId() == -1)
			session.save(chapitre);
		else
			session.merge(chapitre);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Chapitre> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Chapitre> chapitres = (ArrayList<Chapitre>) 
				session.createQuery("FROM Chapitre").list();
		DAOHBM.getInstance().close(session);
		return chapitres;
	}

}
