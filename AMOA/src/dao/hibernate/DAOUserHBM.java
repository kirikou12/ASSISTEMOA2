package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.User;
import dao.DAOUser;

public class DAOUserHBM implements DAOUser {

	private static DAOUser instance = null;

	private DAOUserHBM() {
	}

	public static DAOUser getInstance() {
		if (instance == null)
			instance = new DAOUserHBM();

		return instance;
	}

	@Override
	public User get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		User membre = new User();
		membre = (User) session.get(User.class, id);
		
		DAOHBM.getInstance().close(session);
		return membre;			
	}
	
	@Override
	public User getByName(String userName) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		User membre = new User();
		membre = (User) session.getNamedQuery("userByName")
				.setString("userName", userName).uniqueResult();
		
		DAOHBM.getInstance().close(session);
		return membre;	
	}

	@Override
	public void save(User user) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(user.getId() == -1)
			session.save(user);
		else
			session.update(user);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<User> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<User> users = new ArrayList<User>();
		users = (ArrayList<User>) session.createQuery("FROM User").list();
		DAOHBM.getInstance().close(session);
		return users;
	}		
}
