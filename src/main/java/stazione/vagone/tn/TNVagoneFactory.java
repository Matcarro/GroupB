package stazione.vagone.tn;

import stazione.vagone.Cargo;
import stazione.vagone.Locomotiva;
import stazione.vagone.Passeggeri;
import stazione.vagone.Ristorante;
import stazione.vagone.VagoneFactory;

public class TNVagoneFactory implements VagoneFactory {

	@Override
	public Locomotiva getLocomotiva() {
		return new TNLocomotiva(345,34,35);
	}

	@Override
	public Passeggeri getPasseggeri() {
		return new Passeggeri(78,88);
	}

	@Override
	public Cargo getCargo() {
		return new Cargo(80, 100, 0);
	}

	@Override
	public Ristorante getRistorante() {
		return new Ristorante(30, 50);
	}

}
