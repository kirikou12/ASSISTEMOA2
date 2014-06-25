package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Demande;
import dao.DAODemande;

public class DAODemandeHBM implements DAODemande {

	private static DAODemande instance = null;
	private DAODemandeHBM(){
		
	}
	
	public static DAODemande getInstance(){
		if(instance == null)
			instance = new DAODemandeHBM();
		return instance;
	}
	
	@Override
	public Demande save(Demande demande) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
			if(demande.getDemandeIdRMINE() == -1)
				demande = (Demande) session.save(demande);
			else
				demande = (Demande) session.merge(demande);
			//le merge a répondu à ce probleme cité là: 
			//http://www.objis.com/formation-java/tutoriel-hibernate-3-comprendre-merge.html
			
		DAOHBM.getInstance().close(session);
		return demande;
	}

	@Override
	public Demande get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		Demande demande = (Demande)	session.get(Demande.class, id);
		DAOHBM.getInstance().close(session);
		return demande;
	}

	@Override
	public ArrayList<Demande> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Demande> demandes = (ArrayList<Demande>)	
				session.createQuery("FROM Demande").list();
		DAOHBM.getInstance().close(session);
		
		return demandes;
	}

}
