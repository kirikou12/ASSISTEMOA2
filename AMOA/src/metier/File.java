package metier;

import java.io.Serializable;

public class File implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id = -1;
	private String name;
	private long size;
	private byte[] data;
	private Demande poste;
	
	public File(){
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long l) {
		this.size = l;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	public Demande getPoste() {
		return poste;
	}

	public void setPoste(Demande poste) {
		this.poste = poste;
	}
}
