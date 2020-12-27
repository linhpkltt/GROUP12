/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.model;

import duchan.entity.Banner;
import duchan.until.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duchan
 */
public class BannerModel {
    public List<Banner> getAll(){
        try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Banner");
        List<Banner> listUser = query.list();
        session.getTransaction().commit();
        session.close();
        return listUser;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }
    public boolean insertPro(Banner pro){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            session.save(pro);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
       e.printStackTrace();
       trans.rollback();
        }
        return false;
    }
     public boolean updateBanner(Banner pro){
        Session session = null;
        Transaction trans =  null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            session.merge(pro);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false; 
    }
    public Banner getUserbyId(String bannerId){
        Session session = null;
        Transaction trans  = null;
        Banner banner = null;
        try {
           session = HibernateUtil.getSessionFactory().openSession();
           trans = session.getTransaction();
           trans.begin();
           Query query = session.createQuery("from Banner where bannerId=:bannerId");
           query.setString("bannerId", bannerId);
           banner = (Banner)query.uniqueResult();
           session.getTransaction().commit();
           session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return banner;
    }
    public boolean deleteBanner(String bannerId){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            Banner banner = getUserbyId(bannerId);
            if(banner!=null){
                // tien hanh xoa
                session.delete(banner);
            }
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
       return false;
    }
}
