package com.course.exceptions;

public class TipoVagoneInattesoException extends Exception {

	/**
		 * 
		 */
	private static final long serialVersionUID = 2602410138435733276L;
	private String sequenza;

	public String getSequenza() {
		return sequenza;
	}

	public TipoVagoneInattesoException(String sequenza, String message) {
		super(message + " sigla utilizzata " + sequenza);
		this.sequenza = sequenza;
	}

}