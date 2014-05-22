package dao;

import metier.Vote;

public interface DAOVote {
	void save(Vote vote) throws Exception;
	Vote get(int id) throws Exception;
}
