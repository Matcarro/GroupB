package com.corso.dao.impl;

import java.io.File;
import java.util.List;
import java.util.Optional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.SelectionQuery;

import com.corso.hibernateCFG.Standards;

public class StandardsDaoImpl {
	private static File hibernate = new File("D:/Eclipse-Workspace/CorsoSpringWeb/src/main/java/com/corso/hibernateCFG/hibernate.cfg.xml");
	private static Configuration configuration;
	private static Session session;
	
	//Centralizzare la logica per la gestione di hibernate e recupero della sessione
	//private StandardsDaoImpl void();
	private void getConfig() {
		System.out.println("Getting config file for hibernate: " + hibernate);
		configuration = new Configuration().configure(hibernate);
		System.out.println("Getting config: " + configuration);
		//session = configuration.buildSessionFactory().openSession();
		//System.out.println("Gettign session: " + session);
	}
	public Standards getByWord(String word) {
		getConfig();
		//SelectionQuery<?> query = session.createSelectionQuery("FROM treni WHERE treni =:treni");
		//query.setParameter("treni", word);
		//Optional<?> tuples = query.getResultList().stream().findFirst();
		//session.close();
		//return tuples.isPresent() ? (Standards)tuples.get() : null;
		return null;
	}
}
	

