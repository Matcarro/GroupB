package com.course.model.train;

import java.util.ArrayList;
import java.util.Collection;

import com.course.exceptions.LocomotivaNonInTestaException;
import com.course.exceptions.TipoVagoneInattesoException;
import com.course.exceptions.TroppiRistorantiException;
import com.course.model.wagons.Cargo;
import com.course.model.wagons.Locomotiva;
import com.course.model.wagons.Passeggeri;
import com.course.model.wagons.Ristorante;
import com.course.model.wagons.Vagone;

public abstract class TrenoBuilder {
	public final Treno buildTreno(String sequenza) throws LocomotivaNonInTestaException, TipoVagoneInattesoException, TroppiRistorantiException {
		Collection<Vagone> vagoni = new ArrayList<Vagone>();
		Collection<String> vagoniSimple = new ArrayList<String>();
		int count = 0;
		for (int i = 0; i < sequenza.length(); i++) {
			if (sequenza.toLowerCase().charAt(0) != 'l' || sequenza == null || sequenza == "") {
				throw new LocomotivaNonInTestaException(sequenza, "Locomotiva non presente in testa");
			} else {
				switch (sequenza.toLowerCase().charAt(i)) {
				case 'l':
						Locomotiva l = buildLocomotiva();
						vagoni.add(l);
						vagoniSimple.add(l.toStringSimple());
					break;
				case 'r':
					count++;
					if (count == 1) {
						Ristorante r = buildRistorante();
						vagoni.add(r);
						vagoniSimple.add(r.toStringSimple());
					} else
						throw new TroppiRistorantiException(sequenza, "Troppi ristoranti presenti,");
					break;
				case 'p':
					if (!sequenza.contains("c")) {
						Passeggeri p = buildPasseggeri();
						vagoni.add(p);
						vagoniSimple.add(p.toStringSimple());
					} else
						throw new TipoVagoneInattesoException(sequenza, "Tipo vagone inatteso,");
					;
					break;
				case 'c':
					if (!sequenza.contains("p")) {
						Cargo c = buildCargo();
						vagoni.add(c);
						vagoniSimple.add(c.toStringSimple());
					} else
						stampaErrore();
					break;
				default:
					throw new LocomotivaNonInTestaException(sequenza, "Locomotiva non presente in testa,");
				}
			}
		}
		Treno t = new Treno(vagoni, vagoniSimple);
		return t;
	}

	public static final void stampaErrore() {
		System.out.println("\n ! ERRORE, LA STRINGA NON SODDISFA LE SPECIFICHE ! \n");
	}

	protected abstract Locomotiva buildLocomotiva();

	protected abstract Passeggeri buildPasseggeri();

	protected abstract Cargo buildCargo();

	protected abstract Ristorante buildRistorante();
}
