package com.course.dao.impl;

import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import com.course.dao.Search;
import com.course.dao.Train;

public interface Dao {

public Collection<Train> getTrains(String username); /*Restituisce  Collection di train relativi all'utente oppure null*/
public Collection<Train> getAllTrains(); /*Restituisce  Collection di train oppure null*/
public String getCountryBySearch(String search);
public boolean isCountry(String country); /*verifica che un paese sia già standard*/
public boolean isSearch(String search); /*verifica che la ricerca esista già nel db*/
public boolean verifyUser(String username, String password); /*verifica le credenziali utente*/
public boolean insertSearch(String search, String country, String method); /*Inserisce una ricerca nel db*/
public Search getSearch(String search); /* Restituisce un oggetto ricerca dal db compreso di standardCoutry, date, method, ecc...*/
public List<String> getAllCountries();
	
}
