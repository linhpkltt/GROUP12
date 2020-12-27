/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.model;

import duchan.entity.Hotel;
import duchan.until.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duchan
 */
public class HotelModel {
    public List<Hotel> getAll(){
        try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Hotel");
        List<Hotel> listHotel = query.list();
        session.getTransaction().commit();
        session.close();
        return listHotel;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }
    public boolean insertPro(Hotel pro){
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
     public boolean updateHotel(Hotel pro){
        Session session = null;
        Transaction trans =  null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            //O day la getTransaction() chu co phai beginTransaction dau
            // à em nhầm ạ :))Thay out nhe
            trans = session.getTransaction();
            trans.begin();
            // cap nhap category
            session.merge(pro);
            // commit va dong trans
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return false; 
    }
    public Hotel getHotelById(String hotelId){
        Session session = null;
        Transaction trans  = null;
        Hotel hotel = null;
        try {
           session = HibernateUtil.getSessionFactory().openSession();
           trans = session.getTransaction();
           trans.begin();
           // lay thong tin category
           Query query = session.createQuery("from Hotel where hotelId=:hotelId");
           // set gia tri cho thaam so truyen vao
           query.setString("hotelId", hotelId);
           hotel = (Hotel)query.uniqueResult();
           session.getTransaction().commit();
           session.close();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        }
        return hotel;
    }
    public boolean deleteHotel(String hotelId){
        Session session = null;
        Transaction trans = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            trans = session.getTransaction();
            trans.begin();
            // lay thong tin category theo categoryId
            Hotel hote = getHotelById(hotelId);
            if(hote!=null){
                // tien hanh xoa
                session.delete(hote);
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
