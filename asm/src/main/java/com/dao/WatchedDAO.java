package com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transaction;

import com.bean.Video;
import com.utils.JpaUtils;

public class WatchedDAO {
	private static EntityManager em;
	
	public List<Video> getFavVideoList(String email) {
		em = JpaUtils.getEntityManager();
		List<Video> list = new ArrayList<>();
		
		try {
			em.getTransaction().begin();
			
			String jpql = "select video from Video video inner join Watched watched on video.id = watched.video.id join User user on user.id = watched.user.id where watched.isLiked = true and user.email =: email";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			query.setParameter("email", email);
			
			list = query.getResultList();
			
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			em.close();
		}
	}

	public void deleteByVideoId(int videoId) {
		em = JpaUtils.getEntityManager();
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
