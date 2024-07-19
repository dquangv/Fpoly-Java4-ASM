package com.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.bean.Video;
import com.utils.JpaUtils;

public class VideoDAO {
	private static EntityManager em;

	public static void main(String[] args) {
		VideoDAO vidDao = new VideoDAO();
		vidDao.findAll();
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

	public Video update(Video entity) {
		em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			em.merge(entity);
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
			String jpql = "select o from Video o";
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
}
