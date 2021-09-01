package fr.eni.suividesrepas.bo;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class Repas {

	private static final long serialVersionUID = 1L;

	private int id;
	private LocalDate date;
	private LocalTime heure;
	private List<Aliment> listeAliments;
	
	// constructors
	
	public Repas() {
		this.listeAliments = new ArrayList<>();
	}

	public Repas(LocalDate date, LocalTime heure, List<Aliment> listeAliments) {
		super();
		this.date = date;
		this.heure = heure;
		this.listeAliments = listeAliments;
	}

	public Repas(int id, LocalDate date, LocalTime heure, List<Aliment> listeAliments) {
		super();
		this.id = id;
		this.date = date;
		this.heure = heure;
		this.listeAliments = listeAliments;
	}

	public Repas(int id, LocalDate date, LocalTime heure) {
		super();
		this.id = id;
		this.date = date;
		this.heure = heure;
		this.listeAliments = new ArrayList<>();
	}

	// getters
	
	public int getId() {
		return id;
	}

	public LocalDate getDate() {
		return date;
	}

	public LocalTime getHeure() {
		return heure;
	}

	public List<Aliment> getListeAliments() {
		return listeAliments;
	}

	// setters
	
	public void setId(int id) {
		this.id = id;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public void setHeure(LocalTime heure) {
		this.heure = heure;
	}

	public void setListeAliments(List<Aliment> listeAliments) {
		this.listeAliments = listeAliments;
	}

	// toString()
	
	@Override
	public String toString() {
		return "Repas [id=" + id + ", date=" + date + ", heure=" + heure + ", listeAliments="
				+ listeAliments + "]";
	}
	
	
}
