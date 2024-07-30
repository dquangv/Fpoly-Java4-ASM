package com.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.bean.Share;
import com.bean.User;
import com.bean.Video;
import com.bean.Watched;
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
	public void updateOrInsertWatched(int userId, int videoId, List<String> emails) {
	    EntityManager em = JpaUtils.getEntityManager();
	    EntityTransaction transaction = null;
	    try {
	        transaction = em.getTransaction();
	        transaction.begin();

	        // Tìm bản ghi Share hiện có với userId và videoId
	        String jpqlSelect = "SELECT s FROM Share s WHERE s.user.id = :userId AND s.video.id = :videoId";
	        TypedQuery<Share> query = em.createQuery(jpqlSelect, Share.class);
	        query.setParameter("userId", userId);
	        query.setParameter("videoId", videoId);
	        Share share = query.getResultStream().findFirst().orElse(null);

	        if (share != null) {
	            // Nếu bản ghi đã tồn tại, cập nhật ngày chia sẻ
	            share.setShareDate(new Date());
	            share.setEmail(emails); // Cập nhật danh sách email nếu cần
	            em.merge(share);
	        } else {
	            // Nếu bản ghi chưa tồn tại, chèn bản ghi mới
	            Video video = em.find(Video.class, videoId);
	            User user = em.find(User.class, userId);
	            Share newShare = new Share();
	            newShare.setUser(user);
	            newShare.setVideo(video);
	            newShare.setEmail(emails);
	            newShare.setShareDate(new Date());
	            em.persist(newShare);
	        }

	        transaction.commit();
	    } catch (Exception e) {
	        if (transaction != null) {
	            transaction.rollback();
	        }
	        e.printStackTrace();
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
