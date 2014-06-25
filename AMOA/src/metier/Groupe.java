package metier;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Groupe implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2825089918499753416L;
	private int id = -1;
	private String entitled;
	private String description;
	private Set <User> members = new HashSet<User>();
	private User author;
	private Set <Discussion> discussions = new HashSet<Discussion>();
	
	public Groupe(){
		
	}
	
	public Groupe(int id, String entitled, String descritption, User author, Set<User> members){
		this.id = id;
		this.entitled = entitled;
		this.description = descritption;
		this.author = author;
		this.members = members;		
	}

	public String getEntitled() {
		return entitled;
	}

	public void setEntitled(String entitled) {
		this.entitled = entitled;
	}

	public Set<User> getMembers() {
		return members;
	}

	public void setMembers(Set<User> members) {
		this.members = members;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User author) {
		this.author = author;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int groupId) {
		this.id = groupId;
	}

	public Set <Discussion> getDiscussions() {
		return discussions;
	}

	public void setDiscussions(Set <Discussion> discussions) {
		this.discussions = discussions;
	}
}
