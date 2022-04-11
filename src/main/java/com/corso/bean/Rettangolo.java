package com.corso.bean;

import org.springframework.stereotype.Component;

@Component
public class Rettangolo {
	private int a; 
	private int b;
	
	
	
	
	public Rettangolo(int a, int b) {
		super();
		this.a = a;
		this.b = b;
	}
	@Override
	public String toString() {
		return "Rettangolo [a=" + a + ", b=" + b + "]";
	}
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	} 
		
}
