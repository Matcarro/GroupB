package stazione.exception;

public class LocomotivaNonInTestaException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3796900593785032715L;
	private String sequenza;

	public String getSequenza() {
		return sequenza;
	}

	public LocomotivaNonInTestaException(String sequenza, String message) {
		super(message + " sigla utilizzata " + sequenza);
		this.sequenza = sequenza;
	}

}
