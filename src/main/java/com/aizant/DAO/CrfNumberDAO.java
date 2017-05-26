package com.aizant.DAO;

import java.util.List;

import com.aizant.model.CreateProject;
import com.aizant.model.CrfNumber;

public interface CrfNumberDAO {
	public List<CrfNumber> list();
	public CrfNumber get(int id);
	public void save(CrfNumber crfNumber);
	public void Update(CrfNumber crfNumber);
	public void delete(int id);
	public List getAllcrfNumbers() ;
/*	public List<CrfNumber> getAllCrf(CreateProject createProject);*/
	public void deleteCrf(CrfNumber deleteCrf);
	public int deleteCrfNumber(int id) ;
	
	public List<CrfNumber> getExperimentByPage(int pageid,int total);
	public long getPageCount();

}
