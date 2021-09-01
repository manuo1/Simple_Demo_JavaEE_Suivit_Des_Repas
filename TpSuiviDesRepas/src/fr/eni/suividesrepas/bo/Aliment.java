package fr.eni.suividesrepas.bo;

public class Aliment {

	private int id;
	private String nom;
	
	// constructors
	
	public Aliment() {
	}

	public Aliment(String nom) {
		this.nom = nom;
	}

	public Aliment(int id, String nom) {
		super();
		this.id = id;
		this.nom = nom;
	}
	
	// getters
	
	public int getId() {
		return id;
	}
	public String getNom() {
		return nom;
	}
	
	// setters
	
	public void setId(int id) {
		this.id = id;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}

	// toString()
	
	@Override
	public String toString() {
		return "Aliment [id=" + id + ", nom=" + nom + "]";
	}
	
	
}
