package stazione.vagone;

public abstract class Vagone {

	private double peso;
	
	
	
	public Vagone(double peso) {
		super();
		this.peso = peso;
	}



	public double getPeso() {
		return this.peso;
	}

}
