package fr.eni.suividesrepas.bll;

import fr.eni.suividesrepas.dal.RepasDAO;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import fr.eni.suividesrepas.bo.Aliment;
import fr.eni.suividesrepas.bo.Repas;
import fr.eni.suividesrepas.dal.DAOFactory;

public class RepasManager {
	private RepasDAO repasDAO;
	
	public RepasManager() {
		this.repasDAO = DAOFactory.getRepasDAO();
	}

	public Repas ajouterRepas(LocalDate date, LocalTime heure, List<String> alimentsNameList) 
	{
		Repas repas = new Repas();
		repas.setDate(date);
		repas.setHeure(heure);
		for(String alimentName:alimentsNameList)
		{
			Aliment aliment = new Aliment(alimentName);
			repas.getListeAliments().add(aliment);
		}
		this.repasDAO.insert(repas);
		return repas;
	}

	public List<Repas> getAllRepas(){
		return this.repasDAO.getAllRepas();
	}

	
}
