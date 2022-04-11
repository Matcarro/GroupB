package stazione.vagone.fr;

import stazione.vagone.Cargo;
import stazione.vagone.Locomotiva;
import stazione.vagone.Passeggeri;
import stazione.vagone.Ristorante;
import stazione.vagone.VagoneFactory;

public class FRVagoneFactory implements VagoneFactory {

	@Override
	public Locomotiva getLocomotiva() {
		return new FRLocomotiva(50,500,8222);
	}

	@Override
	public Passeggeri getPasseggeri() {
		return new Passeggeri(222,256);
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
