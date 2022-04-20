package com.course.model.wagons;

public class Ristorante extends Vagone {
	private int capienza;

	public Ristorante(int capienza, double peso) {
		super(peso);
		this.capienza = capienza;
	}
	
	@Override
	public String toString() {
		return "<br> Caratteristiche: <br> <b>Capienza</b> = " + capienza + "<br> <b>Peso</b> = " + super.getPeso();
	}
	
	public String toStringSimple() {
		return "Ristorante";
	}
	
}
