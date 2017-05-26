package com.aizant.DAO;

import java.util.List;

import com.aizant.model.Privileger;


public interface PrivilegerDAO {
	public List<Privileger> list();
	
	public Privileger get(int id);
	public void saveOrUpdate(Privileger privileger);

	public List getAllPrivileger();
	
	public List<Privileger> getPrivilegerByPage(int pageid, int total);
	
	public void deletePrivileger(int id);
	public int getPageCount();


}
