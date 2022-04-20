package com.course.model.wagons;

public class Locomotiva extends Vagone{
	
	private double pesoTrainabile;
	private double potenza;

	public Locomotiva(double peso, double pesoTrainabile, double potenza) {
		super(peso);
		this.pesoTrainabile = pesoTrainabile;
		this.potenza = potenza;
	}

	@Override
	public String toString() {
		return "<br> Caratteristiche: <br> <b>Peso trainabile</b> = " + pesoTrainabile + "<br> <b>Potenza</b> = " + potenza;
	}
	
	public String toStringSimple() {
		return "Locomotiva";
	}

}
