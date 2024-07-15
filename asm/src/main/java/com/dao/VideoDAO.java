package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.bean.Video;
import com.utils.JpaUtils;

public class VideoDAO {
	private static EntityManager em;
	
	public static void main(String[] args) {
		VideoDAO viddao = new VideoDAO();
		viddao.findAll();
	}
	
	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}
	
	public Video create (Video entity) {
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
	
	public List<Video> findAll() {
		em = JpaUtils.getEntityManager();
		List<Video> list = null;
		
		try {
			String jpql = "select o from Video o";
			
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			
			list = query.getResultList();
			
			for (Video video : list) {
				System.out.println(video.getId());
				System.out.println(video.getPoster());
				System.out.println(video.getTitle());
			}
			
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			
			return null;
		} finally {
			em.close();
		}
	}
}
