package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Manuel;
import dao.DAOManuel;

public class DAOManuelHBM implements DAOManuel {
	
	private static DAOManuel instance = null;
	private DAOManuelHBM(){
		
	}
	public static DAOManuel getInstance(){
		if(instance==null)
			instance = new DAOManuelHBM();
		return instance;
	}

	@Override
	public Manuel get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		Manuel manuel =  (Manuel) session.get(Manuel.class, id);
		DAOHBM.getInstance().close(session);
		return manuel;
	}

	@Override
	public void save(Manuel manuel) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(manuel.getId()==-1)
			session.save(manuel);
		else
			session.merge(manuel);
		
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Manuel> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		ArrayList<Manuel> manuels = (ArrayList<Manuel>) 
				session.createQuery("FROM Manuel").list();
		
		DAOHBM.getInstance().close(session);
		return manuels;
	}

}
