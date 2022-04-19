package com.course.model.checkstring;

import java.util.HashMap;
import java.util.Map;

public class EsitoCheckString {

	private String search;
	private String correct;
	private Map<String, Integer> bmDistances = new HashMap<String, Integer>();
	private Map<String, String> bmResults = new HashMap<String, String>();
	
	public String getCorrect() {
		if(correct == null) {
			computerBestResult();
		}
		return correct;
	}
	
	protected boolean computerBestResult() {
		String begin = this.correct;
		System.out.println("  ONERUN @ "+search+" - Computed result : " + bmDistances.values() + bmResults.values());
		int base = search.length();
		for (String algoritm : bmDistances.keySet()) {
			Integer result = bmDistances.get(algoritm);
			System.out.println("\t w/ : " + algoritm);
			if( result < base && result != -1 && result < 5) {
				correct = bmResults.get(algoritm);
				System.out.println("\t  > best : " + correct);
				base = bmDistances.get(algoritm);
			}
		}
		return (begin != correct);
	}

	public String getSearch() {
		return search;
	}

	public void setCorrect(String correct) {
		this.correct = correct;
	}

	public void setSearch(String word) {
		this.search = word;
	}

	public void addCase(String algoritmName, String proposed, int dist) {
		
		if( ( (bmResults.get(algoritmName) == null) || (bmDistances.get(algoritmName) > dist) ) && (dist >= 0) ) {
			System.out.println("# updatingCorrect : " + proposed + " w/ " + algoritmName + " - Dist: " + dist);
			this.bmDistances.put(algoritmName, dist);
			this.bmResults.put(algoritmName, proposed);
		}
	}


}
