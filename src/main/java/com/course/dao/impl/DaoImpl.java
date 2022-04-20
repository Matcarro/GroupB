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
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.course.dao.CountryDao;
import com.course.dao.SearchDao;
import com.course.dao.TrainDao;
import com.course.dao.UserDao;
import com.course.model.User;

import jakarta.persistence.criteria.CriteriaQuery;

public class DaoImpl implements Dao {
	private static Configuration configuration;
	private static Dao dao;
	private SessionFactory factory;
	private BeanFactory beans;

	private DaoImpl() {
		configuration = new Configuration();
		configuration.configure();
		factory = configuration.buildSessionFactory();
		Resource r = new ClassPathResource("beans.xml");
		beans = new XmlBeanFactory(r);
	}

	public static Dao getInstance() {
		if (dao == null)
			dao = new DaoImpl();
		return dao;
	}

	@Override
	public Collection<TrainDao> getTrains(String username) {
		ArrayList<TrainDao> result;

		Session session = factory.openSession();

		Query q = session.createQuery("FROM TrainDao WHERE owner=:owner");
		UserDao u = (UserDao) beans.getBean("user");
		u.setUsername(username);
		q.setParameter("owner", u);
		result = new ArrayList(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		return result;
	}

	public Collection<TrainDao> getAllTrains() {
		ArrayList<TrainDao> result;

		Session session = factory.openSession();

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

		Session session = factory.openSession();
		ArrayList<SearchDao> result = null;
		Query q = session.createQuery("FROM SearchDao WHERE search=:search");
		q.setParameter("search", search);
		result = new ArrayList<>(q.list());
		session.close();

		if (result == null || result.size() == 0)
			return null;

		return result.get(0).getStandardCountry().getCountry();
	}

	@Override
	public boolean isCountry(String country) {
		ArrayList<CountryDao> result = null;
		CountryDao c;

		Session session = factory.openSession();

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

		Session session = factory.openSession();
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

		Session session = factory.openSession();
		session.beginTransaction();

		SearchDao s = (SearchDao) beans.getBean("search");
		s.setSearch(search);

		CountryDao c = (CountryDao) beans.getBean("country");
		c.setCountry(country);
		s.setStandardCountry(c);
		s.setMethod(method);
		s.setInsertDate(Timestamp.from(Instant.now()));

		session.saveOrUpdate(s);
		session.getTransaction().commit();
		session.close();

		return true;
	}

	@Override
	public boolean isSearch(String search) {
		ArrayList<SearchDao> result = null;
		SearchDao s;

		Session session = factory.openSession();

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
		Session session = factory.openSession();

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

		Session session = factory.openSession();
		Query q = session.createQuery("FROM CountryDao");

		queryResult = new ArrayList<>(q.list());
		session.close();

		if (queryResult == null || queryResult.size() == 0) {
			return null;
		}

		result = new ArrayList<>(queryResult.size());

		for (int i = 0; i < queryResult.size(); i++) {
			result.add(queryResult.get(i).getCountry());
		}

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

		if (usernameExists(username) == true)
			return false;

		Session session = factory.openSession();
		session.beginTransaction();

		UserDao u = (UserDao) beans.getBean("user");
		u.setUsername(username);
		u.setPassword(password);
		u.setFirstName(firstName);
		u.setLastName(lastName);
		u.setBirthDate(birthDate);
		u.setAdmin(false);

		session.save(u);
		session.getTransaction().commit();
		session.close();

		return true;
	}

	public void shutdown() {
		factory.close();
	}

	@Override
	public boolean insertTrain(String ownerUsername, String buildCountry, String sigla) {
		if (ownerUsername == null || buildCountry == null || sigla == null)
			return false;

		Session session = factory.openSession();
		session.beginTransaction();

		TrainDao t = (TrainDao) beans.getBean("train");
		CountryDao c = (CountryDao) beans.getBean("country");
		UserDao u = (UserDao) beans.getBean("user");

		c.setCountry(buildCountry);
		u.setUsername(ownerUsername);

		t.setOwner(u);
		t.setBuildCountry(c);
		t.setSigla(sigla);

		session.save(t);
		session.getTransaction().commit();
		session.close();

		return true;
	}

	@Override
	public List<User> serviceUserView() {
		List<User> result = null;
		List<?> queryResult;
		User modelUser = (User) beans.getBean("modelUser");

		Session session = factory.openSession();
		Query q = session.createQuery("SELECT u.username, u.firstName, u.lastName, count(t.id) FROM UserDao AS u INNER JOIN TrainDao AS t ON u.username = t.owner GROUP BY u.username");

		queryResult = new ArrayList<>(q.list());
		session.close();

		if (queryResult == null || queryResult.size() == 0)
			return null;
		
		result=new ArrayList<>(queryResult.size());
		
		for(int i=0; i<queryResult.size(); i++) {
			Object[] row = (Object[]) queryResult.get(i);
			modelUser=new User();
			modelUser.setUsername(""+row[0]);
			modelUser.setFirstName(""+row[1]);
			modelUser.setLastName(""+row[2]);
			modelUser.setTrainNumber(Integer.parseInt(""+row[3]));
			result.add(modelUser);
		}
		
		if (result == null || result.size() == 0)
			return null;
		
		return result;
	}

	@Override
	public List<SearchDao> getAllSearches() {
		List<SearchDao> result = null;

		Session session = factory.openSession();
		Query q = session.createQuery("FROM SearchDao");

		result = new ArrayList<>(q.list());
		session.close();

		if (result == null || result.size() == 0) {
			return null;
		}

		return result;
	}

	@Override
	public boolean deleteTrain(int id) {
		int affected;
		
		Session session=factory.openSession();
		session.beginTransaction();
		Query q=session.createQuery("DELETE FROM TrainDao WHERE id=:id");
		q.setParameter("id", id);
		affected=q.executeUpdate();
		
		session.getTransaction().commit();
		session.close();

		if(affected<= 0) return false;
		
		
		return true;
	}

	@Override
	public boolean deleteSearch(String search) {
		int affected;
		
		Session session=factory.openSession();
		session.beginTransaction();
		Query q=session.createQuery("DELETE FROM SearchDao WHERE search=:search");
		q.setParameter("search",search);
		affected=q.executeUpdate();
		
		session.getTransaction().commit();
		session.close();

		if(affected<= 0) return false;
		
		
		return true;
	}

	@Override
	public boolean deleteUser(String username) {
		int affected;
		
		Session session=factory.openSession();
		session.beginTransaction();
		Query q=session.createQuery("DELETE FROM UserDao WHERE username=:username");
		q.setParameter("username", username);
		affected=q.executeUpdate();
		
		session.getTransaction().commit();
		session.close();

		if(affected<= 0) return false;
		
		
		return true;
	}

	@SuppressWarnings("deprecation")
	@Override
	public boolean isAdmin(String username) {
		ArrayList<UserDao> result=null;
		UserDao u=null;
		
		Session session=factory.openSession();
		Query q=session.createQuery("FROM UserDao WHERE username=:username");
		q.setParameter("username", username);
		result=new ArrayList<UserDao>(q.list());
		u=result.get(0);
		
		return u.isAdmin();
	}

}
