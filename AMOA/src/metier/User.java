package metier;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class User implements Serializable {

	private static final long serialVersionUID = -5940887276670981764L;
	private int id = -1;
	private String firstNam;
	private String lastName;
	private String email;
	private String userName;
	private String password;
	private Boolean admin;
	private Set<User> amis = new HashSet<User>();
	private Set<Notification> notifications = new HashSet<Notification>();
	

	public User() {
		this.id = 0;
		this.email = "";
		this.firstNam = "";
		this.lastName = "";
		this.userName = "";
		this.password = "";
		this.admin = true;
	}
	

	public User(String email, String firstNam, String lastName,
			String password, Boolean website, String userName) {
		this.email = email;
		this.firstNam = firstNam;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.admin = website;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result
				+ ((firstNam == null) ? 0 : firstNam.hashCode());
		result = prime * result + id;
		result = prime * result
				+ ((lastName == null) ? 0 : lastName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (firstNam == null) {
			if (other.firstNam != null)
				return false;
		} else if (!firstNam.equals(other.firstNam))
			return false;
		if (id != other.id)
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		return true;
	}
	
	public int getNotificationSize(){
		return this.notifications.size();
	}

	public String getFirstNam() {
		return firstNam;
	}

	public void setFirstNam(String firstNam) {
		this.firstNam = firstNam;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getAdmin() {
		return admin;
	}

	public void setAdmin(Boolean admin) {
		this.admin = admin;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Set<User> getAmis() {
		return amis;
	}

	public void setAmis(Set<User> amis) {
		this.amis = amis;
	}

	public void addAmi(User user1) {
		this.amis.add(user1);		
	}

	public Set<Notification> getNotifications() {
		return notifications;
	}

	public void setNotifications(Set<Notification> notifications) {
		this.notifications = notifications;
	}

}
