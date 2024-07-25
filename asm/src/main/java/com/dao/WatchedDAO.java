package com.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transaction;

import com.bean.User;
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
	public List<Video> findAllVideoWatched(int uid) {
	    em = JpaUtils.getEntityManager();
	    List<Video> list = null;
	    try {
	        // Câu truy vấn JPQL sắp xếp theo ngày xem
	        String jpql = "SELECT v FROM Watched w JOIN w.video v WHERE w.user.id = :uid ORDER BY w.watchDate DESC";
	        TypedQuery<Video> query = em.createQuery(jpql, Video.class);
	        query.setParameter("uid", uid);
	        list = query.getResultList();
	        return list;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    } finally {
	        em.close();
	    }
	}
	public void updateOrInsertWatched(int userId, int videoId) {
	    EntityManager em = JpaUtils.getEntityManager();
	    EntityTransaction transaction = null;
	    try {
	        transaction = em.getTransaction();
	        transaction.begin();

	        // Tìm bản ghi Watched hiện có với userId và videoId
	        String jpqlSelect = "SELECT w FROM Watched w WHERE w.user.id = :userId AND w.video.id = :videoId";
	        TypedQuery<Watched> query = em.createQuery(jpqlSelect, Watched.class);
	        query.setParameter("userId", userId);
	        query.setParameter("videoId", videoId);
	        Watched watched = query.getResultStream().findFirst().orElse(null);

	        if (watched != null) {
	            // Nếu bản ghi đã tồn tại, cập nhật ngày xem
	            watched.setWatchDate(new Date());
	            em.merge(watched);
	        } else {
	            // Nếu bản ghi chưa tồn tại, chèn bản ghi mới
	            Video video = em.find(Video.class, videoId);
	            User user = em.find(User.class, userId);
	            Watched newWatched = new Watched();
	            newWatched.setUser(user);
	            newWatched.setVideo(video);
	            newWatched.setWatchDate(new Date());
	            newWatched.setLiked(false);
	            em.persist(newWatched);
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
