package com.corso.hibernateCFG;

public class Standards {
	private int Id;
	private String sigla;
	private String factory;
	private String utente;
	
	@Override
	public String toString() {
		return "Standards [Id=" + Id + ", word=" + sigla + ", synonymous=" + factory + "]";
	}
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}
	
	public String getSigla() {
		return sigla;
	}
	public void setSigla(String word) {
		this.sigla = word;
	}

	public String getFactory() {
		return factory;
	}
	public void setFactory(String synonymous) {
		this.factory = synonymous;
	}
	public String getUtente() {
		return utente;
	}
	public void setUtente(String utente) {
		this.utente = utente;
	}
}
