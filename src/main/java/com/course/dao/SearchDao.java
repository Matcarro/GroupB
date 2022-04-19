package com.course.dao;

import java.sql.Date;
import java.sql.Timestamp;

public class SearchDao {
	private String search;
	private String method;
	private Timestamp insertDate;
	private CountryDao standardCountry;

	

	public CountryDao getStandardCountry() {
		return standardCountry;
	}

	public void setStandardCountry(CountryDao standardCountry) {
		this.standardCountry = standardCountry;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	
	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public Timestamp getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Timestamp insertDate) {
		this.insertDate = insertDate;
	}
}
