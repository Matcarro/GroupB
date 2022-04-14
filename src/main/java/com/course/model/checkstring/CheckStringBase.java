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
	private List<String> fixes;
	private Dao dao = DaoImpl.getInstance();
	static Map<Integer, String> ratings = new HashMap<Integer, String>();
	private static String readyFix ;
	private Scanner in;
	
	public CheckStringBase() {
		super();
	}
	
	//     Interfaccia per i risultati dei singoli algoritmi
	// -1 :: Per i casi binari negativi
	// 0  :: Per i match
	// 0+ :: Misura della distanza fra 'input' e 'standard'
	protected abstract int internalCheck(String input, String standard);
	
	public String check(String word) {
		in = new Scanner(System.in);
		this.fixes = dao.getAllCountries();
		if(fixes == null) return "dbERR";
		for(int i = 0 ; i < fixes.size(); i++) {
			if(fixes.get(i) != null ) {
				int dist = internalCheck(word, fixes.get(i));
				System.out.println(">> chk: " + getName() +" @ "+ + dist);
				ratings.put(dist, fixes.get(i));
			}
		}
		if(hasNext()) {
			return next.check(word);
		} else {
			List<String> topFive = new ArrayList<String>();
			String correct = null;
			int i = 0;
			while (topFive.size()<2) {
				if(ratings.get(i) != null) {
					if(correct == null && i <= 2) { // Automatic threshold
						correct = ratings.get(i);
						System.out.println(">> FIX automatico : " + ratings.get(i));
						break;
					} else if (correct == null && i <= 4){ // Manual add
						// TODO Save
					}
					topFive.add(ratings.get(i));
				}
				i++;
			}
			ratings.clear();
			return correct;
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