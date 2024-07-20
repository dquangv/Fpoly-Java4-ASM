package com.dao;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.utils.JpaUtils;

public class WatchedDao {

	public void deleteByVideoId(int videoId) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			Query query = em.createQuery("DELETE FROM Watched w WHERE w.video.id = :videoId");
			query.setParameter("videoId", videoId);
			query.executeUpdate();
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
}
