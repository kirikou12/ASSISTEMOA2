package dao.hibernate;

import org.hibernate.Session;

import metier.Comment;
import dao.DAOComment;

public class DAOCommentHBM implements DAOComment {

	private static DAOComment instance = null;
	
	private DAOCommentHBM(){
		
	}
	
	public static DAOComment getInstance(){
		if(instance == null)
			instance = new DAOCommentHBM();
		
		return instance;			
	}
	
	@Override
	public void save(Comment comment) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		session.save(comment);
		DAOHBM.getInstance().close(session);
	}

}
