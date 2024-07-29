package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.bean.Share;
import com.utils.JpaUtils;

public class ShareDAO {
	private static EntityManager em;

	public Share create(Share entity) {
		em = JpaUtils.getEntityManager();

		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();

			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();

			return null;
		} finally {
			em.close();
		}
	}

	public List<Share> findAll() {
		em = JpaUtils.getEntityManager();

		try {
			TypedQuery<Share> query = em.createQuery("SELECT s FROM Share s", Share.class);
			return query.getResultList();
		} finally {
			em.close();
		}
	}
	
	public static void main(String[] args) {
		ShareDAO testDao = new ShareDAO();
		List<Share> list =  testDao.findAll();
		for (Share share : list) {
			System.out.println("ID: "+share.getUser().getFullname());
			System.out.println("Sender Email: "+share.getUser().getEmail());
			System.out.println("Sender Email: "+share.getEmail());
			System.out.println("Send Day: "+share.getShareDate());
		}
	}
}
