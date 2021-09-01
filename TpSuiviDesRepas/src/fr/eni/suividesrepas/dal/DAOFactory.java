package fr.eni.suividesrepas.dal;

public abstract class DAOFactory {
	
	public static RepasDAO getRepasDAO()
	{
		return new RepasDAOJdbcImpl();
	}
}
	