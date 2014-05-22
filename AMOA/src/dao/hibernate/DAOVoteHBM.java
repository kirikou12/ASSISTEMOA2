package dao.hibernate;

import org.hibernate.Session;

import metier.Vote;
import dao.DAOVote;

public class DAOVoteHBM implements DAOVote {
	
	private static DAOVote instance = null;
	
	public static DAOVote getInstance(){
		if(DAOVoteHBM.instance == null)
			instance = new DAOVoteHBM();
		return DAOVoteHBM.instance;
	}
	
	private DAOVoteHBM(){
		
	}

	@Override
	public void save(Vote vote) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		if(vote.getId() == -1)
			session.save(vote);
		else
			session.update(vote);
		DAOHBM.getInstance().close(session);
	}

	@Override
	public Vote get(int id) throws Exception {
		Session	session = DAOHBM.getInstance().connect();
		Vote vote = (Vote) session.get(Vote.class, id);
		DAOHBM.getInstance().close(session);
		return vote;
	}

}
