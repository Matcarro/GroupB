package stazione.vagone;

public class Passeggeri extends Vagone {
	
	private int capienza;

	public Passeggeri(int capienza, double peso) {
		super(peso);
		this.capienza = capienza;
	}
	
	@Override
	public String toString() {
		return "Passeggeri [capienza=" + capienza + ", peso=" + super.getPeso() + "]";
	}
	
	public String toStringSimple() {
		return "Passeggeri";
	}
}
