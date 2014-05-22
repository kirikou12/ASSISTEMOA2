package dao.hibernate;

import org.hibernate.Session;

import metier.Reponse;
import dao.DAOReponse;

public class DAOReponseHBM implements DAOReponse {

	private static DAOReponse instance = null;
	
	private DAOReponseHBM(){
		
	}
	
	public static DAOReponse getInstance(){
		if(instance == null)
			instance = new DAOReponseHBM();
		
		return instance;			
	}
	
	@Override
	public void save(Reponse reponse) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		if(reponse.getReponseId() == -1)
			session.save(reponse);
		else
			session.update(reponse);
		
		DAOHBM.getInstance().close(session);
	}

	@Override
	public Reponse get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		Reponse reponse = (Reponse) session.get(Reponse.class, id);
		DAOHBM.getInstance().close(session);
		
		return reponse;
	}

}
