package stazione.vagone;

public abstract class Locomotiva extends Vagone {
	
	private double pesoTrainabile;
	private double potenza;

	public Locomotiva(double peso, double pesoTrainabile, double potenza) {
		super(peso);
		this.pesoTrainabile = pesoTrainabile;
		this.potenza = potenza;
	}

	@Override
	public String toString() {
		return "Locomotiva [pesoTrainabile=" + pesoTrainabile + ", potenza=" + potenza + "]";
	}
	
	public String toStringSimple() {
		return "Locomotiva";
	}

}
