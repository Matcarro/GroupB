package stazione;

import stazione.vagone.Cargo;
import stazione.vagone.Locomotiva;
import stazione.vagone.Passeggeri;
import stazione.vagone.Ristorante;
import stazione.vagone.VagoneFactory;

public class ConcreteBuilder extends TrenoBuilder {
	
	VagoneFactory factory;
	
	

	public ConcreteBuilder(VagoneFactory factory) {
		super();
		this.factory = factory;
	}

	@Override
	protected Locomotiva buildLocomotiva() {
		Locomotiva l = factory.getLocomotiva();
		return l;
	}

	@Override
	public Passeggeri buildPasseggeri() {
		Passeggeri p = factory.getPasseggeri();
		return p;
	}

	@Override
	protected Cargo buildCargo() {
		Cargo c = factory.getCargo();
		return c;
	}

	@Override
	public Ristorante buildRistorante() {
		Ristorante r = factory.getRistorante();
		return r;
	}
}



/*
@Override
public Collection<Vagone> buildTreno(String s) {
	for(int i=0; i<s.length(); i++) {
		if(s.charAt(i) == 'H')
			this.buildLocomotiva();
		else if(s.charAt(i) == 'P')
			this.buildPasseggeri();
		else if(s.charAt(i) == 'R')
			this.buildRistorante();
		else if(s.charAt(i) == 'C')
			this.buildCargo();
	}
	return this.getVagoni();
}*/