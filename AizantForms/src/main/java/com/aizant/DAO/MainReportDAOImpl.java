package com.aizant.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aizant.model.MainReport;


@Repository("mainReportDAO")
public class MainReportDAOImpl implements MainReportDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public MainReportDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(MainReport mainReport) {
		sessionFactory.getCurrentSession().saveOrUpdate(mainReport);
	}

	@Transactional
	public void deleteMainReport(int id){
		MainReport ReportDelete = new MainReport();
		ReportDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ReportDelete );

	}

	@Transactional
	public MainReport get(int id) {
		String hql = "from MainReport where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<MainReport> list = (List<MainReport>) query.getResultList();
		if (list != null || list.isEmpty()) {
			return list.get(0);
		}
		return null;

	}
	public int getPageCount() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Long count = (Long) session.createQuery("SELECT COUNT(id) FROM MainReport").getSingleResult();
		tx.commit();
		session.close();

		return (int) Math.ceil(count / 10.0);
	}
	
	@Transactional
	public List<MainReport> list() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<MainReport> list = session.createQuery("from MainReport").list();
		tx.commit();
		session.close();
		return list;
	}

	@Transactional
	public List getAllMainReports() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List list = session.createQuery("from MainReport").list();
		tx.commit();
		session.close();

		return list;
	}
	public List<MainReport> getReportByPage(int pageid, int total) {
		Session session = sessionFactory.openSession();

		Query query = session.createQuery("FROM MainReport");
		query.setFirstResult((pageid - 1) * total);
		query.setMaxResults(total);


		List<MainReport> list =(List<MainReport>) query.getResultList();

		session.close();
		return list;
	}


/*	@Transactional
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		User user = (User) session.load(User.class, id);
		session.delete(user);
		tx.commit();

		session.close();

	}*/
	
}
