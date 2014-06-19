package dao.hibernate;

import java.util.ArrayList;

import metier.Question;

import org.hibernate.Session;

import dao.DAOQuestion;

public class DAOQuestionHBM implements DAOQuestion {

	private static DAOQuestion instance = null;

	private DAOQuestionHBM() {
	}

	public static DAOQuestion getInstance() {
		if (instance == null)
			instance = new DAOQuestionHBM();

		return instance;
	}

	@Override
	public Question get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		
		Question question = new Question();
		question = (Question) session.get(Question.class, id);
		
		DAOHBM.getInstance().close(session);
		return question;			
	}

	@Override
	public void save(Question question) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(question.getId() == -1)
			session.save(question);
		else
			session.update(question);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public ArrayList<Question> load() throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		ArrayList<Question> questions;
		questions = (ArrayList<Question>) session.createQuery("FROM Question").list();
		
		return questions;
	}	
}
