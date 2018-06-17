package dao;

import java.util.List;

import pojo.Fatie;

public interface FatieMapper {

	
	public List<Fatie> findAllFatie();
	
	public List<Fatie> findFatieByName(String name);

	public void addFatie(Fatie fatie);
	
	public Fatie findFatieById(long id);

	public void deleteFatieById(Long id);

	
}
