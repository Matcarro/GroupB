package com.course.model.checkstring;

public interface CheckString {
	public EsitoCheckString check(String word, EsitoCheckString esito);
	public void setNext(CheckString next);
	public boolean hasNext();
}