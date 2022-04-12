package com.course.exceptions;

public class TroppiRistorantiException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 343095771436107988L;
	private String sequenza;

	public String getSequenza() {
		return sequenza;
	}

	public TroppiRistorantiException(String sequenza, String message) {
		super(message + " sigla utilizzata " + sequenza);
		this.sequenza = sequenza;
	}

}
