package com.course.model.checkstring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import com.course.dao.impl.Dao;
import com.course.dao.impl.DaoImpl;

public abstract class CheckStringBase implements CheckString {
	private CheckString next = null;
	private List<String> countries;
	private Dao dao = DaoImpl.getInstance();

	
	public CheckStringBase() {
		super();
	}
	
	//     Interfaccia per i risultati dei singoli algoritmi
	// -1 :: Per i casi binari negativi
	// 0  :: Per i match (binari positivi)
	// 0+ :: Misura della distanza fra 'input' e 'standard'
	protected abstract int internalCheck(String input, String standard);
	
	public EsitoCheckString check(String word, EsitoCheckString esito) {
		
		esito.setSearch(word);
		this.countries = dao.getAllCountries();
		
		// Distance comparison w/ local algorithm
		for(int i = 0 ; i < countries.size(); i++) {
			esito.addCase(getName(), countries.get(i), internalCheck(word, countries.get(i)));
		}
		
		// Follows the queue & compute result
		if(hasNext()) {
			return next.check(word, esito);
		} else {
			esito.computerBestResult();
			return esito;
		}
	}

	public void setNext(CheckString next) {
		this.next = next;
	}
	
	public boolean hasNext() {
		return this.next != null;
	}
	
	protected String getName() {
		return this.getClass().getSimpleName();
	}
}