/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.model;

import duchan.entity.HotelService;
import duchan.until.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duchan
 */
public class HotelserviceModel {
    public List<HotelService> getAllHotelSevevice(){
        try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from HotelService");
        List<HotelService> listHotelservice = query.list();
        session.getTransaction().commit();
        session.close();
        return listHotelservice;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }
    public boolean insertHotelservice(HotelService hotelserviceNew){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(hotelserviceNew);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
       e.printStackTrace();
       trans.rollback();
        }
        return false;
    }
     public boolean updateHotelservice(HotelService hotelserviceUp){
        Session session = null;
        Transaction trans =  null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
           session.beginTransaction();
            session.merge(hotelserviceUp);
            session.getTransaction().commit();  
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false; 
    }
    public HotelService getHotelservicebyId(String hotelServiceId){
        Session session = null;
        Transaction trans  = null;
        HotelService hotelservice = null;
        try {
           session = HibernateUtil.getSessionFactory().openSession();
           trans = session.getTransaction();
           trans.begin();
           Query query = session.createQuery("from HotelService where hotelServiceId=:hSId");
           query.setString("hSId", hotelServiceId);
           hotelservice = (HotelService)query.uniqueResult();
           session.getTransaction().commit();
           session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return hotelservice;
    }
    public boolean deleteHotelservice(String hotelServiceId){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            HotelService hotelservice = getHotelservicebyId(hotelServiceId);
            if(hotelservice!=null){
                // tien hanh xoa
                session.delete(hotelservice);
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
