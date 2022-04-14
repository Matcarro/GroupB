package com.course.dao.impl;

import java.io.File;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.course.dao.CountryDao;
import com.course.dao.SearchDao;
import com.course.dao.TrainDao;
import com.course.dao.UserDao;

public class DaoImpl implements Dao {
	private static Configuration configuration;
	private static Session session;
	private static Dao dao;
	private SessionFactory factory;

	private DaoImpl() {
		configuration = new Configuration();
		configuration.configure();
		factory=configuration.buildSessionFactory();
	}

	public static Dao getInstance() {
		if (dao == null)
			dao = new DaoImpl();
		return dao;
	}

	@Override
	public Collection<TrainDao> getTrains(String username) {
		ArrayList<TrainDao> result;

		this.session = factory.openSession();

		Query q = session.createQuery("FROM TrainDao WHERE ownerUsername= :username");
		q.setParameter("username", username);
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		return result;
	}
	
	public Collection<TrainDao> getAllTrains() {
		ArrayList<TrainDao> result;

		this.session = factory.openSession();

		Query q = session.createQuery("FROM TrainDao");
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		return result;
	}

	@Override
	public String getCountryBySearch(String search) {
		if (isSearch(search) == false)
			return null;

		session = factory.openSession();
		ArrayList<SearchDao> result = null;
		Query q = session.createQuery("FROM SearchDao WHERE search=:search");
		q.setParameter("search", search);
		result = new ArrayList<>(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		return result.get(0).getStandardCountry();
	}

	@Override
	public boolean isCountry(String country) {
		ArrayList<CountryDao> result = null;
		CountryDao c;

		this.session = factory.openSession();

		Query q = session.createQuery("FROM CountryDao WHERE country=:country");
		q.setParameter("country", country);
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return false;

		c = result.get(0);

		return c.getCountry().equals(country);
	}

	@Override
	public boolean verifyUser(String username, String password) {
		ArrayList<UserDao> result = null;

		session = factory.openSession();
		Query q = session.createQuery("FROM UserDao WHERE username=:username AND password=:password");
		q.setParameter("username", username);
		q.setParameter("password", password);

		result = new ArrayList<>(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return false;

		return true;
	}

	@Override
	public boolean insertSearch(String search, String country, String method) {
		if (isSearch(search) == true || isCountry(country) == false)
			return false;

		session = factory.openSession();
		session.beginTransaction();

		SearchDao s = new SearchDao();
		s.setSearch(search);
		s.setStandardCountry(country);
		s.setMethod(method);
		s.setInsertDate(Timestamp.from(Instant.now()));

		session.save(s);
		session.getTransaction().commit();
		session.close();

		return true;
	}

	@Override
	public boolean isSearch(String search) {
		ArrayList<SearchDao> result = null;
		SearchDao s;

		this.session = factory.openSession();

		Query q = session.createQuery("FROM SearchDao WHERE search=:search");
		q.setParameter("search", search);
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return false;

		s = result.get(0);

		return s.getSearch().equals(search);
	}

	public SearchDao getSearch(String search) {
		ArrayList<SearchDao> result = null;
		SearchDao s;
		this.session = factory.openSession();

		Query q = session.createQuery("FROM SearchDao WHERE search=:search");
		q.setParameter("search", search);
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		s = result.get(0);

		return s;
	}

	@Override
	public List<String> getAllCountries() {
		List<String> result = null;
		List<CountryDao> queryResult = null;

		session = factory.openSession();
		Query q = session.createQuery("FROM CountryDao");

		queryResult = new ArrayList<>(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		result = new ArrayList<>(queryResult.size());

		for (int i = 0; i < queryResult.size(); i++)
			result.add(queryResult.get(i).getCountry());

		return result;
	}

	public boolean usernameExists(String username) {
		ArrayList<UserDao> result = null;

		Session s = factory.openSession();
		Query q = s.createQuery("FROM UserDao WHERE username=:username");
		q.setParameter("username", username);
		result = new ArrayList<>(q.list());
		s.close();

		if (result == null || result.size() == 0)
			return false;

		UserDao u = result.get(0);

		if (!u.getUsername().equals(username))
			return false;

		return true;

	}

	@Override
	public boolean insertUser(String username, String password, String firstName, String lastName, Date birthDate) {

		if (usernameExists(username)==true)
			return false;

		session = factory.openSession();
		session.beginTransaction();

		UserDao u = new UserDao();
		u.setUsername(username);
		u.setPassword(password);
		u.setFirstName(firstName);
		u.setLastName(lastName);
		u.setBirthDate(birthDate);

		session.save(u);
		session.getTransaction().commit();
		session.close();

		return true;
	}

	public void shutdown() {
		factory.close();
	}
}
