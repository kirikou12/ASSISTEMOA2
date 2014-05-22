package metier;

public class AutoCompleteData {
    private final String label;
    private final String value;
    private final int id;

    public AutoCompleteData(String _label, String _value, int _id) {       
        this.label = _label;
        this.value = _value;
        this.id = _id;
    }

    public String getLabel() {
		return label;
	}

	public String getValue() {
		return value;
	}

	public String setLabel() {
		return label;
	}

	public String setValue() {
		return value;
	}

	public int getId() {
		return id;
	}

    
}