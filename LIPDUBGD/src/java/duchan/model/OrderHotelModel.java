/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.model;

import duchan.entity.OrderHotel;
import duchan.until.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duchan
 */
public class OrderHotelModel {
  public List<OrderHotel> getAll(){
        try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from OrderHotel");
        List<OrderHotel> listOrderhotel = query.list();
        session.getTransaction().commit();
        session.close();
        return listOrderhotel;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }
    public boolean insertOrderHotel(OrderHotel orderhotelNew){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(orderhotelNew);   
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
       e.printStackTrace();
       trans.rollback();
        }
        return false;
    }
     public boolean updateOrderHotel(OrderHotel orderhotelUp){
        Session session = null;
        Transaction trans =  null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
           session.beginTransaction();
            session.merge(orderhotelUp);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false; 
    }
    public OrderHotel getOrderHotelbyId(String orderHotelId){
        Session session = null;
        Transaction trans  = null;
        OrderHotel orderhotel = null;
        try {
           session = HibernateUtil.getSessionFactory().openSession();
           trans = session.getTransaction();
           trans.begin();
           Query query = session.createQuery("from OrderHotel where orderHotelId=:orderHotelId");
           query.setString("orderHotelId", orderHotelId);
           orderhotel = (OrderHotel)query.uniqueResult();
           session.getTransaction().commit();
           session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return orderhotel;
    }
    public boolean deleteOrderHotel(String orderHotelId){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            OrderHotel orderhotel = getOrderHotelbyId(orderHotelId);
            if(orderhotel!=null){
                // tien hanh xoa
                session.delete(orderhotel);
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
