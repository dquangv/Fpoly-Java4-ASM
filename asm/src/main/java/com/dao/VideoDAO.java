package com.dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.bean.Video;
import com.bean.VideoStatistics;
import com.utils.JpaUtils;

public class VideoDAO {
	private static EntityManager em;

	public static void main(String[] args) {
		VideoDAO vidDao = new VideoDAO();
		vidDao.findAll();
		List<Video> vd = vidDao.getVideoStatistics();
		for (Video video : vd) {
			System.out.println(video.getTitle() + video.getViews());
		}
	}

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public Video create(Video entity) {
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

	public boolean update(Video entity) {
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

	public boolean delete(int id) {
		em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();

			Video video = em.find(Video.class, id);
			if (video != null) {

				String hql = "DELETE FROM Watched w WHERE w.videoId = :videoId";
				em.createQuery(hql).setParameter("videoId", id).executeUpdate();

				em.remove(video);
				em.getTransaction().commit();
				return true;
			} else {
				em.getTransaction().rollback();
				return false;
			}
		} catch (Exception e) {
			em.getTransaction().rollback();

			return false;
		} finally {
			em.close();
		}
	}

	public List<Video> findAll() {
		em = JpaUtils.getEntityManager();
		List<Video> list = null;
		try {
			String jpql = "SELECT o FROM Video o ORDER BY o.id ASC";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			list = query.getResultList();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			em.close();
		}
	}

	public List<Video> findAllActive() {
		em = JpaUtils.getEntityManager();
		List<Video> list = null;
		try {
			String jpql = "SELECT o FROM Video o WHERE o.active = true";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			list = query.getResultList();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			em.close();
		}
	}

	public Video findById(int id) {
		em = JpaUtils.getEntityManager();
		try {
			return em.find(Video.class, id);
		} finally {
			em.close();
		}
	}

	public List<Video> getVideoStatistics() {
	    List<Video> videos = new ArrayList<>();
	    EntityManager em = JpaUtils.getEntityManager();
	    EntityTransaction transaction = null;
	    try {
	        transaction = em.getTransaction();
	        transaction.begin();

	        Query query = em.createNativeQuery("SELECT * FROM get_video_statistics()");
	        List<Object[]> results = query.getResultList();
	        for (Object[] result : results) {
	            Video video = new Video();
	            video.setTitle((String) result[0]);
	            Long likes = result[1] != null ? ((Number) result[1]).longValue() : 0L;
	            video.setViews(likes); 
	            videos.add(video);
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
	    return videos;
	}


	public List<VideoStatistics> getDetailedVideoStatistics() {
		List<VideoStatistics> videoStatisticsList = new ArrayList<>();
		em = JpaUtils.getEntityManager();
		EntityTransaction transaction = null;
		try {
			transaction = em.getTransaction();
			transaction.begin();

			Query query = em.createNativeQuery("SELECT * FROM get_likes_per_video()");
			List<Object[]> results = query.getResultList();
			for (Object[] result : results) {
				VideoStatistics videoStatistics = new VideoStatistics();
				videoStatistics.setVideoTitle((String) result[0]);
				videoStatistics.setUserFullname((String) result[1]);
				videoStatistics.setUserEmail((String) result[2]);
				videoStatistics.setLikeDate((java.sql.Date) result[3]);
				videoStatisticsList.add(videoStatistics);
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
		return videoStatisticsList;
	}

	public List<String> getDistinctVideoTitles() {
		em = JpaUtils.getEntityManager();
		List<String> videoTitles = new ArrayList<>();
		try {
			String jpql = "SELECT DISTINCT v.title FROM Video v";
			TypedQuery<String> query = em.createQuery(jpql, String.class);
			videoTitles = query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		return videoTitles;
	}

	public List<Video> searchVideo(String keyword) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction transaction = null;
		List<Video> list = new ArrayList<Video>();
		try {
			String jpql = "SELECT DISTINCT v FROM Video v WHERE LOWER(v.title) LIKE :keyword OR LOWER(v.poster) LIKE :keyword OR LOWER(v.description) LIKE :keyword OR LOWER(v.link) LIKE :keyword";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			query.setParameter("keyword", "%" + keyword.toLowerCase() + "%");
			list = query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}

		return list;
	}
}
