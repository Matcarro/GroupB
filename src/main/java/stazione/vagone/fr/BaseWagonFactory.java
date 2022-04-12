package stazione.vagone.fr;

import com.course.model.wagons.Cargo;
import com.course.model.wagons.Locomotiva;
import com.course.model.wagons.Passeggeri;
import com.course.model.wagons.Ristorante;
import com.course.model.wagons.VagoneFactory;

public class BaseWagonFactory implements VagoneFactory {

	@Override
	public Locomotiva getLocomotiva() {
		return new Locomotiva(50,500,8222);
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
