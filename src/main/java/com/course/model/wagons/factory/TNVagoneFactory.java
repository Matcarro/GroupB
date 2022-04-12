package com.course.model.wagons.factory;

import com.course.model.wagons.Cargo;
import com.course.model.wagons.Locomotiva;
import com.course.model.wagons.Passeggeri;
import com.course.model.wagons.Ristorante;
import com.course.model.wagons.VagoneFactory;

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
