package com.course.model.checkstring;

import com.course.model.checkstring.algorithms.Equal;
import com.course.model.checkstring.algorithms.Levenshtein;
import com.course.model.checkstring.algorithms.Soundex;

public class CheckStringFactory {
	
	public static CheckString getAlgorithm(){
		CheckString s010 = new Equal();     // Characters level distance
		CheckString l015 = new Levenshtein();     // Characters level distance
		CheckString s020 = new Soundex();         // 0 :: Sound match
		s010.setNext(l015);
		l015.setNext(s020);
		return s010;
	}
	
}
