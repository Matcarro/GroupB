package stazione.vagone;

public class Ristorante extends Vagone {
	private int capienza;

	public Ristorante(int capienza, double peso) {
		super(peso);
		this.capienza = capienza;
	}
	
	@Override
	public String toString() {
		return "Ristorante [capienza=" + capienza + ", peso=" + super.getPeso() + "]";
	}
	
	public String toStringSimple() {
		return "Ristorante";
	}
	
}
