package com.course.model.checkstring.algorithms;

import com.course.model.checkstring.CheckStringBase;

public class Equal extends CheckStringBase {

	@Override
	protected int internalCheck(String input, String standard) {
		
		if(input.equalsIgnoreCase(standard)) {
			return 0;
		}
		return -1;
	}

}