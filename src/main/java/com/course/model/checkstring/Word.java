package com.course.model.checkstring;

import com.course.model.checkstring.algorithms.Levenshtein;
import com.course.model.checkstring.algorithms.Soundex;
import com.course.model.checkstring.algorithms.Start;

public class Word {
	private int reputazione;
	private String parolaErrata;
	private String parolaCorretta;
	private CheckString s010 = new Start();     // Characters level distance
	private CheckString l015 = new Levenshtein();     // Characters level distance
	private CheckString s020 = new Soundex();         // 0 :: Sound match
	
	public Word() {
		super();
		s010.setNext(l015);
		l015.setNext(s020);
	}

	public int getReputazione() {
		return reputazione;
	}

	public void setReputazione(int reputazione) {
		this.reputazione = reputazione;
	}

	public String getParolaErrata() {
		return parolaErrata;
	}

	public void setParolaErrata(String parolaErrata) {
		this.parolaErrata = parolaErrata;
	}

	@Override
	public String toString() {
		return "Termine [reputazione=" + reputazione + ", parolaErrata=" + parolaErrata + "]";
	}

	public String getParolaCorretta() {
		return parolaCorretta;
	}

	public void setParolaCorretta(String parolaCorretta) {
		this.parolaCorretta = parolaCorretta;
	}

	public void setParola(String raw) {
		if(this.parolaCorretta == null) {
			this.parolaErrata = raw;
		} else {
			this.parolaCorretta = raw;
		}
	}
	
	public void selfCheck() {
		this.parolaCorretta = s010.check(this.parolaErrata);
	}

	public String getParola() {
		return this.parolaCorretta;
	}


}