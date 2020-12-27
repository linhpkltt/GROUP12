/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.model;

import duchan.entity.Servicee;
import duchan.until.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duchan
 */
public class ServiceModel {
    public List<Servicee> getAll(){
        try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Servicee");
        List<Servicee> listService = query.list();
        session.getTransaction().commit();
        session.close();
        return listService;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }
    public boolean insertPro(Servicee pro){
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
     public boolean updateService(Servicee pro){
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
    public Servicee getServicebyId(String serviceId){
        Session session = null;
        Transaction trans  = null;
        Servicee service = null;
        try {
           session = HibernateUtil.getSessionFactory().openSession();
           trans = session.getTransaction();
           trans.begin();
           Query query = session.createQuery("from Servicee where serviceId=:serviceId");
           query.setString("serviceId", serviceId);
           service = (Servicee)query.uniqueResult();
           session.getTransaction().commit();
           session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return service;
    }
    public boolean deleteService(String serviceId){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            Servicee service = getServicebyId(serviceId);
            if(service!=null){
                // tien hanh xoa
                session.delete(service);
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
