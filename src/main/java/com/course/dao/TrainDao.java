package com.course.dao;

public class TrainDao {
	private int id;
	private String buildCountry;
	private String ownerUsername;
	private String sigla;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBuildCountry() {
		return buildCountry;
	}

	public void setBuildCountry(String buildCountry) {
		this.buildCountry = buildCountry;
	}

	public String getOwnerUsername() {
		return ownerUsername;
	}

	public void setOwnerUsername(String ownerUsername) {
		this.ownerUsername = ownerUsername;
	}

	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}
}
