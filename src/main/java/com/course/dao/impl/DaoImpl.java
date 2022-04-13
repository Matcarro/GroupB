package com.course.dao.impl;

import java.io.File;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.course.config.hibernate.Country;
import com.course.config.hibernate.Search;
import com.course.config.hibernate.Standards;
import com.course.config.hibernate.Train;
import com.course.config.hibernate.User;

public class DaoImpl implements Dao {
	private static File hibernate = new File("src/main/java/com/course/config/hibernate/hibernate.cfg.xml");
	private static Configuration configuration;
	private static Session session;
	private static Dao dao;

	private DaoImpl() {
		configuration = new Configuration();
		configuration.configure(hibernate);

	}

	public static Dao getInstance() {
		if (dao == null)
			dao = new DaoImpl();
		return dao;
	}

	/*
	 * public Standards getByWord(String word) { session =
	 * configuration.buildSessionFactory().openSession(); Query query =
	 * session.createQuery("FROM Standards WHERE sigla =:sigla");
	 * query.setParameter("sigla", word); System.out.println("Getting query: " +
	 * query); Optional<?> tuples = query.getResultList().stream().findFirst();
	 * session.close(); return tuples.isPresent() ? (Standards) tuples.get() : null;
	 * // return null; }
	 */

	@Override
	public Collection<Train> getTrains(String username) {
		ArrayList<Train> result;

		this.session = configuration.buildSessionFactory().openSession();

		Query q = session.createQuery("FROM Train WHERE ownerUsername= :username");
		q.setParameter("username", username);
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		return result;
	}

	@Override
	public String getCountryBySearch(String search) {
		return null;
	}

	@Override
	public boolean isCountry(String country) {
		ArrayList<Country> result = null;
		Country c;

		this.session = configuration.buildSessionFactory().openSession();

		Query q = session.createQuery("FROM Country WHERE country=:country");
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
		ArrayList<User> result = null;

		session = configuration.buildSessionFactory().openSession();
		Query q = session.createQuery("FROM User WHERE username=:username AND password=:password");
		q.setParameter("username", username);
		q.setParameter("password", password);

		result = new ArrayList<>(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return false;
		
		return true;
	}

	@Override
	public boolean insertSearch(String search, String country,String method) throws SQLException{
		session=configuration.buildSessionFactory().openSession();
		Search s=new Search();
		s.setSearch(search);
		s.setStandardCountry(country);
		s.setMethod(method);
		
		return false;
		
	}

	@Override
	public boolean isSearch(String search) {
		ArrayList<Search> result = null;
		Search s;
		

		this.session = configuration.buildSessionFactory().openSession();

		Query q = session.createQuery("FROM Search WHERE search=:search");
		q.setParameter("search", search);
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return false;

		s = result.get(0);

		return s.getSearch().equals(search);
	}

}
