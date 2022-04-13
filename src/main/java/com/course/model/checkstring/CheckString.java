package com.course.model.checkstring;

public interface CheckString {
	public String check(String word);
	public void setNext(CheckString next);
	public boolean hasNext();
}