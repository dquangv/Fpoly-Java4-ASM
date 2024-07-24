package com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transaction;

import com.bean.Video;
import com.bean.Watched;
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
	
	public Watched create(Watched entity) {
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
	
	public boolean update(Watched entity) {
		em = JpaUtils.getEntityManager();
		
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			
			return true;
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
			
			return false;
		} finally {
			em.close();
		}
	}
	
	public Watched findWatchedByVideoId(String email, int videoId) {
		em = JpaUtils.getEntityManager();
		Watched vidWatched = null;
		
		try {
			String hql = "SELECT w FROM Watched w WHERE w.user.email = :email AND w.video.id = :videoId";
			TypedQuery<Watched> query = em.createQuery(hql, Watched.class);
			query.setParameter("email", email);
			query.setParameter("videoId", videoId);
			
			vidWatched = query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
		
		return vidWatched;
	}
	
	
//	public void unlikeVideoByVideoId(String email, int videoId) {
//        em = JpaUtils.getEntityManager();
//
//        try {
//            em.getTransaction().begin();
//
//            String jpql = "UPDATE Watched w SET w.isLiked = false WHERE w.user.email = :email AND w.video.id = :videoId";
//            Query query = em.createQuery(jpql);
//            query.setParameter("email", email);
//            query.setParameter("videoId", videoId);
//
//            int rowsUpdated = query.executeUpdate();
//            em.getTransaction().commit();
//
//            if (rowsUpdated == 0) {
//                System.out.println("Không tìm thấy ID trong Watched");
//            }
//            
//        } catch (Exception e) {
//            em.getTransaction().rollback();
//            e.printStackTrace();
//        } finally {
//            em.close();
//        }
//    }
	
	
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
