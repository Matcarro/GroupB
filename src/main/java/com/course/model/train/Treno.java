package com.course.model.train;

import java.util.Collection;

import com.course.model.wagons.Vagone;

public class Treno {
	
	private Collection<Vagone> vagoni;
	private Collection<String> vagoniSimple;
	
	
	public Treno(Collection<Vagone> vagoni, Collection<String> vagoniSimple) {
			super();
			this.vagoni = vagoni;
			this.vagoniSimple = vagoniSimple;
		}



/*	public void invertiDirezione() {
		String s = "";
		for(int i=sequenza.length(); i>0;i--) {
			s += sequenza.charAt(i);
		}
		this.sequenza = s;
		this.vagoni = TrenoBuilder.getTreno(sequenza,builder);
	}
*/	
	
	public Collection<Vagone> getVagoni() {
		return vagoni;
	}
	
	@Override
	public String toString() {
		return "[Treno [vagoni=" + vagoni + "]";
	}

	public String toStringSimple() {
		return "[Treno [vagoni=" + vagoniSimple + "]";
	}

}
