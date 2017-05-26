package com.aizant.DAO;

import java.util.List;

import com.aizant.model.AssignForms;


public interface AssignFormsDAO {
	public List<AssignForms> list();
	
	public AssignForms get(int id);
	public void saveOrUpdate(AssignForms AssignForms);

	public List getAllAssignForms();
	
	public List<AssignForms> getAssignFormsByPage(int pageid, int total);
	
	public void deleteAssignForms(int id);
	public int getPageCount();


}
