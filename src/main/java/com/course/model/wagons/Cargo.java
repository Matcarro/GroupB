package com.course.model.wagons;

public class Cargo extends Vagone {
	
	private double capienza;
	private double pesoVuoto;
	private double pesoPienoMax;
	
	
	@Override
	public String toString() {
		return "<br> Caratteristiche:<br> <b>Capienza</b> = " + capienza + "<br> <b>Peso vuoto</b> = " + pesoVuoto + "<br> <b>Peso pieno max</b> = " + pesoPienoMax;
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
