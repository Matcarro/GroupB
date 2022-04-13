package com.course.model.checkstring;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public abstract class CheckStringBase implements CheckString {
	private CheckString next = null;
	private List<String> fixes;
	private WordDAO dao = new WordDAO();
	private static Map<Integer, String> ratings = new HashMap<Integer, String>();
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
		this.fixes = dao.getFixable();
		
		if(fixes == null) return "dbERR";
		if(ratings.isEmpty()){
			CheckStringBase.readyFix = dao.getFix(word);
			if(CheckStringBase.readyFix != null) {
				return CheckStringBase.readyFix;
			}
			
		}
		
		for(int i = 0 ; i < fixes.size(); i++) {
			if(fixes.get(i) != null ) {
				int dist = internalCheck(word, fixes.get(i));
				ratings.put(dist, fixes.get(i));
			}
		}
		
		if(hasNext()) {
			return next.check(word);
		} else  {
			List<String> topFive = new ArrayList<String>();
			String correct = null;
			int i = 0;
			while (topFive.size()<2) {
				if(ratings.get(i) != null) {
					// System.out.println( (topFive.size()+1) + "# - " + ratings.get(i));
					if(correct == null && i <= 2) { // Automatic threshold
						correct = ratings.get(i);
						System.out.println(">> FIX automatico : " + ratings.get(i));
						break;
					} else if (correct == null && i <= 4){ // Manual add
						correct = askWhatToDo(word, ratings.get(i));
						// TODO Save
					}
					topFive.add(ratings.get(i));
				}
				i++;
			}
			ratings.clear();
			CheckStringBase.readyFix = null;
			return correct;
		}
		
	}
	
	// Aggiungere parametro passato dal controller
	private String askWhatToDo(String trovata, String parola) {
		System.out.print(">  Sostituire con [ " + parola +" ] ? [y/N]");
		String answer = in.nextLine();
		if(answer.contains("Y") || answer.contains("y")) {
			return parola;
		} else {
			return null;
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