package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Discussion;
import dao.DAODiscussion;

public class DAODiscussionHBM implements DAODiscussion {

	private static DAODiscussion instance = null;
	private DAODiscussionHBM(){
		
	}
	
	public static DAODiscussion getInstance(){
		if(instance == null)
			instance = new DAODiscussionHBM();
		return instance;
	}
	
	@Override
	public void save(Discussion discussion) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
			if(discussion.getId() == -1)
				session.save(discussion);
			else
				session.merge(discussion);
			//le merge a répondu à ce probleme cité là: 
			//http://www.objis.com/formation-java/tutoriel-hibernate-3-comprendre-merge.html
			
		DAOHBM.getInstance().close(session);
	}

	@Override
	public Discussion get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		Discussion discussion = (Discussion)	session.get(Discussion.class, id);
		DAOHBM.getInstance().close(session);
		return discussion;
	}

	@Override
	public ArrayList<Discussion> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Discussion> discussions = (ArrayList<Discussion>)	
				session.createQuery("FROM Discussion").list();
		DAOHBM.getInstance().close(session);
		
		return discussions;
	}

}
