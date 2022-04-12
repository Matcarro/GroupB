package com.course.model.wagons;

public interface VagoneFactory {
	
	public Locomotiva getLocomotiva();
	public Passeggeri getPasseggeri();
	public Cargo getCargo();
	public Ristorante getRistorante();

}
