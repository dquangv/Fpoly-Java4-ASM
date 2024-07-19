package com.dao;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.bean.User;
import com.bean.Video;
import com.utils.JpaUtils;

public class UserDao {
	private static EntityManager em;
	public static void main(String[] args) {
		UserDao userDao = new UserDao();
		userDao.getUserByRole(true);
	}
	
	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}
	
	public User getUserByRole(boolean role) {
		em = JpaUtils.getEntityManager();
		User user = null;
		
		try {
			  String jpql = "select o from User o where admin = :role";
		        TypedQuery<User> query = em.createQuery(jpql, User.class);
		        query.setParameter("role", role);
		        user = query.getSingleResult();
		        System.out.println("fullname of user " + user.getFullname());
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("không truy vấn được user");
		}
		return user;
	}
	
	public User create(User entity) {
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
