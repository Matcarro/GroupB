package com.course.dao.impl;

import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;

import com.course.config.hibernate.Train;

public interface Dao {

public Collection<Train> getTrains(String username); /*Restituisce  Collection di train oppure null*/
public String getCountryBySearch(String search);
public boolean isCountry(String country); /*verifica che un paese sia già standard*/
public boolean isSearch(String search);
public boolean verifyUser(String username, String password);
public boolean insertSearch(String search, String country, String method) throws SQLException;

	
}
