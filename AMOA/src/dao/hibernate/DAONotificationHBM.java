package dao.hibernate;

import java.util.ArrayList;

import org.hibernate.Session;

import metier.Notification;
import dao.DAONotification;

public class DAONotificationHBM implements DAONotification {

	private static DAONotification instance = null;

	private DAONotificationHBM() {
	}

	public static DAONotification getInstance() {
		if (instance == null)
			instance = new DAONotificationHBM();

		return instance;
	}

	@Override
	public Notification get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Notification notification = new Notification();
		notification = (Notification) session.get(Notification.class, id);
		
		DAOHBM.getInstance().close(session);
		return notification;			
	}

	@Override
	public void save(Notification notification) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(notification.getId() == -1)
			session.save(notification);
		else
			session.update(notification);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Notification> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Notification> notifications;
		notifications = (ArrayList<Notification>) session.createQuery("FROM Notification").list();
		
		return notifications;
	}	
}
