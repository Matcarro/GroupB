package com.course.dao;

public class TrainDao {
	private int id;
	private CountryDao buildCountry;
	private UserDao owner;
	private String sigla;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public CountryDao getBuildCountry() {
		return buildCountry;
	}

	public void setBuildCountry(CountryDao buildCountry) {
		this.buildCountry = buildCountry;
	}

	public UserDao getOwner() {
		return owner;
	}

	public void setOwner(UserDao owner) {
		this.owner = owner;
	}

	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}
}
