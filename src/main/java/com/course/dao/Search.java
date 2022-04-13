package com.course.dao;

import java.sql.Date;
import java.sql.Timestamp;

public class Search {
	private String search;
	private String standardCountry;
	private String method;
	private Timestamp insertDate;

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getStandardCountry() {
		return standardCountry;
	}

	public void setStandardCountry(String standardCountry) {
		this.standardCountry = standardCountry;
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
