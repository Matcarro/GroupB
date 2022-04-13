package com.course.config.hibernate;

import java.util.ArrayList;
import java.util.HashMap;

import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;

public class Test {
	public static void main(String[] args) {
		Dao dao=DaoImpl.getInstance();
		
		System.out.println(dao.isCountry("United States of America"));
		ArrayList<Train> m=new ArrayList<>(dao.getTrains("OscarDeFilpo"));
		
		for(Train t: m)
			System.out.println("Treno: "+t.getId()+" Di: "+t.getOwnerUsername()+" sigla: "+t.getSigla()+" country: "+t.getBuildCountry());
		
		System.out.println("Login: "+dao.verifyUser("OscarDeFilpo","Oscar123"));
	}
}
