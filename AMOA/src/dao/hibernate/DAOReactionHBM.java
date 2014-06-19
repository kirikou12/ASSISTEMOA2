package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Reaction;
import dao.DAOReaction;

public class DAOReactionHBM implements DAOReaction {

	private static DAOReaction instance = null;

	private DAOReactionHBM() {
	}

	public static DAOReaction getInstance() {
		if (instance == null)
			instance = new DAOReactionHBM();

		return instance;
	}

	@Override
	public Reaction get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Reaction reaction = new Reaction();
		reaction = (Reaction) session.get(Reaction.class, id);
		
		DAOHBM.getInstance().close(session);
		return reaction;			
	}

	@Override
	public void save(Reaction reaction) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(reaction.getId() == -1)
			session.save(reaction);
		else
			session.update(reaction);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Reaction> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Reaction> reactions;
		reactions = (ArrayList<Reaction>) session.createQuery("FROM Reaction").list();
		
		return reactions;
	}	
}
