package com.course.model.wagons;

public class Cargo extends Vagone {
	
	private double capienza;
	private double pesoVuoto;
	private double pesoPienoMax;
	
	
	@Override
	public String toString() {
		return "Cargo [capienza=" + capienza + ", pesoVuoto=" + pesoVuoto + ", pesoPienoMax=" + pesoPienoMax + "]";
	}


	public Cargo(double capienza, double pesoVuoto, double peso) {
		super(peso);
		this.capienza = capienza;
		this.pesoVuoto = pesoVuoto;
		this.pesoPienoMax = capienza + pesoVuoto;
	}
	
	public String toStringSimple() {
		return "Cargo";
	}
	
	

}
