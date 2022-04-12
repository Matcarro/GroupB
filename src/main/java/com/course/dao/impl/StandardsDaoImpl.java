package com.course.dao.impl;

import java.io.File;
import java.util.Optional;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.course.dao.Standards;

public class StandardsDaoImpl {
	private static File hibernate = new File("hibernate.cfg.xml"); //src.main.resources
	private static Configuration configuration;
	private static Session session;
	
	//Centralizzare la logica per la gestione di hibernate e recupero della sessione
	//private StandardsDaoImpl void();
	private void getConfig() {
		System.out.println("Getting config file for hibernate: " + hibernate);
		configuration = new Configuration().configure(hibernate);
		System.out.println("Getting config: " + configuration);
		session = configuration.buildSessionFactory().openSession();
		System.out.println("Getting session: " + session);
	}
	
	public Standards getByWord(String word) {
		getConfig();
		Query query = session.createQuery("FROM Standards WHERE sigla =:sigla");
		query.setParameter("sigla", word);
		System.out.println("Getting query: " + query);
		Optional<?> tuples = query.getResultList().stream().findFirst();
		session.close();
		return tuples.isPresent() ? (Standards)tuples.get() : null;
		//return null;
	}
}
	

