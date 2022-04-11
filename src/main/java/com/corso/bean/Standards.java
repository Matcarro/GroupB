package com.corso.bean;

public class Standards {
	private int Id;
	private String word;
	private String synonymous;
	
	@Override
	public String toString() {
		return "Standards [Id=" + Id + ", word=" + word + ", synonymous=" + synonymous + "]";
	}
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}
	
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}

	public String getSynonymous() {
		return synonymous;
	}
	public void setSynonymous(String synonymous) {
		this.synonymous = synonymous;
	}
}
