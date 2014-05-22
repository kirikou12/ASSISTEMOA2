package dao.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DAOHBM {
	
	private	static	DAOHBM	instance = null;
	
	public	static	DAOHBM	getInstance() {
		if (instance==null) {
			instance = new DAOHBM();
		}
		return instance;
	}
	
	private	DAOHBM() {
	}
	
	private static SessionFactory	sessionFactory = null;
	
	public Session connect() throws Exception {
		if (sessionFactory == null)
			sessionFactory = new Configuration().configure().buildSessionFactory();//null le prof ma darhe ev sa solution!!
		Class.forName("com.mysql.jdbc.Driver");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		return session;
	}
	
	public void cancel(Session session){
		session.getTransaction().rollback();
		session.close();
	}

	public void close(Session session) throws Exception {
		session.getTransaction().commit();
		session.close();
	}
}
