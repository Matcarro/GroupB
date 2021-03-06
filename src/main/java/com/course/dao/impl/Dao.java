package com.course.dao.impl;

import java.sql.Date;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import com.course.dao.SearchDao;
import com.course.dao.TrainDao;
import com.course.model.User;

public interface Dao {

//trains table
public Collection<TrainDao> getTrains(String username); /*Restituisce  Collection di train oppure null*/
public Collection<TrainDao> getAllTrains();
public boolean insertTrain(String ownerUsername, String buildCountry, String sigla);
public boolean deleteTrain(int id);

//country table
public String getCountryBySearch(String search);
public boolean isCountry(String country); /*verifica che un paese sia gi� standard*/
public List<String> getAllCountries();

//search table
public List<SearchDao> getAllSearches();
public boolean isSearch(String search); /*verifica che la ricerca esista gi� nel db*/
public boolean insertSearch(String search, String country, String method); /*Inserisce una ricerca nel db*/
public SearchDao getSearch(String search); /* Restituisce un oggetto ricerca dal db compreso di standardCoutry, date, method, ecc...*/
public boolean deleteSearch(String search);

//user table
public boolean verifyUser(String username, String password); /*verifica le credenziali utente*/
public boolean usernameExists(String username);
public boolean insertUser(String username, String password, String firstName,String lastName, Date birthDate); /*Inserisce un user nel db*/
public boolean deleteUser(String username);
public boolean isAdmin(String username);

public List<User> serviceUserView();

public void shutdown();
}
