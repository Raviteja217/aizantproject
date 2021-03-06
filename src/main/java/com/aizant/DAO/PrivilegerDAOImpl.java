package com.aizant.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aizant.model.Privileger;


@Repository("privilegerDAO")
public class PrivilegerDAOImpl implements PrivilegerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public PrivilegerDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(Privileger privileger) {
		sessionFactory.getCurrentSession().saveOrUpdate(privileger);
	}

	@Transactional
	public void deletePrivileger(int id){
		Privileger PrivilegerDelete = new Privileger();
		PrivilegerDelete.setId(id);
		sessionFactory.getCurrentSession().delete(PrivilegerDelete );

	}

	@Transactional
	public Privileger get(int id) {
		String hql = "from Privileger where id=" + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		List<Privileger> list = (List<Privileger>) query.getResultList();
		if (list != null || list.isEmpty()) {
			return list.get(0);
		}
		return null;

	}
	public int getPageCount() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Long count = (Long) session.createQuery("SELECT COUNT(id) FROM Privileger").getSingleResult();
		tx.commit();
		session.close();

		return (int) Math.ceil(count / 10.0);
	}



	@Transactional
	public List<Privileger> list() {

		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List<Privileger> list = session.createQuery("from Privileger").list();
		tx.commit();
		session.close();
		return list;
	}

	@Transactional
	public List getAllPrivileger() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		List list = session.createQuery("from Privileger").list();
		tx.commit();
		session.close();

		return list;
	}
	public List<Privileger> getPrivilegerByPage(int pageid,int total){
		Session session = sessionFactory.openSession();

		Query query = session.createQuery("FROM Privileger");
		query.setFirstResult((pageid - 1) * total);
		query.setMaxResults(total);


		List<Privileger> list =(List<Privileger>) query.getResultList();

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
