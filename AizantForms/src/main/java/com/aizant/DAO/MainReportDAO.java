package com.aizant.DAO;

import java.util.List;

import com.aizant.model.MainReport;

public interface MainReportDAO {
	public List<MainReport> list();
	
	public MainReport get(int id);
	public void saveOrUpdate(MainReport mainReport);

	public List getAllMainReports();
	
	public List<MainReport> getReportByPage(int pageid, int total);
	
	public void deleteMainReport(int id);
	public int getPageCount();


}
