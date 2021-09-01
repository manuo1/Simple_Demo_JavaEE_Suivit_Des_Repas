package fr.eni.suividesrepas.dal;

import java.util.List;

import fr.eni.suividesrepas.bo.Repas;

public interface RepasDAO {
	public void insert(Repas repas);
	public List<Repas> getAllRepas();
}
