package com.dao;

import javax.persistence.EntityManager;

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
}
