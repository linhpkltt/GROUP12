/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.model;

import duchan.entity.Orderr;
import duchan.until.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duchan
 */
public class OrderModel {
   public List<Orderr> getAll(){
        try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Orderr");
        List<Orderr> listOrder = query.list();
        session.getTransaction().commit();
        session.close();
        return listOrder;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }
    public boolean insertOrder(Orderr orderNew){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(orderNew);   
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
       e.printStackTrace();
       trans.rollback();
        }
        return false;
    }
     public boolean updateOrder(Orderr orderUp){
        Session session = null;
        Transaction trans =  null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            session.merge(orderUp);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false; 
    }
    public Orderr getOrderbyId(String orderId){
        Session session = null;
        Transaction trans  = null;
        Orderr order = null;
        try {
           session = HibernateUtil.getSessionFactory().openSession();
           trans = session.getTransaction();
           trans.begin();
           Query query = session.createQuery("from Orderr where orderId=:orderId");
           query.setString("orderId", orderId);
           order = (Orderr)query.uniqueResult();
           session.getTransaction().commit();
           session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return order;
    }
    public boolean deleteOrder(String orderId){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            Orderr order = getOrderbyId(orderId);
            if(order!=null){
                // tien hanh xoa
                session.delete(order);
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
