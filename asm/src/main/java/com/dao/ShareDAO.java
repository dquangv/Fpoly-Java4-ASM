package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

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

    public List<Share> findAll() {
        em = JpaUtils.getEntityManager();

        try {
            TypedQuery<Share> query = em.createQuery("SELECT s FROM Share s", Share.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    public List<Share> findAllAndGroup() {
        List<Share> shares = findAll();
        Map<String, Share> groupedShares = new HashMap<>();
        for (Share share : shares) {
            String key = share.getVideo().getTitle() + "_" + share.getUser().getFullname() + "_" + share.getUser().getEmail();
            if (groupedShares.containsKey(key)) {
                Share existingShare = groupedShares.get(key);
                Set<String> emails = new HashSet<>(existingShare.getEmail());
                emails.addAll(share.getEmail());
                existingShare.setEmail(new ArrayList<>(emails));
                if (share.getShareDate().after(existingShare.getShareDate())) {
                    existingShare.setShareDate(share.getShareDate());
                }
            } else {
                Share newShare = new Share();
                newShare.setVideo(share.getVideo());
                newShare.setUser(share.getUser());
                newShare.setEmail(new ArrayList<>(new HashSet<>(share.getEmail())));
                newShare.setShareDate(share.getShareDate());
                groupedShares.put(key, newShare);
            }
        }
        return new ArrayList<>(groupedShares.values());
    }

    public static void main(String[] args) {
        ShareDAO testDao = new ShareDAO();
        List<Share> list = testDao.findAllAndGroup();
        for (Share share : list) {
            System.out.println("Title: " + share.getVideo().getTitle());
            System.out.println("Fullname: " + share.getUser().getFullname());
            System.out.println("Sender Email: " + share.getUser().getEmail());
            System.out.println("Receiver Email: " + share.getEmail());
            System.out.println("Send Date: " + share.getShareDate());
        }
    }
}
