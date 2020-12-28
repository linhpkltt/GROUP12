/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.model;

import duchan.entity.Userr;
import duchan.until.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author duchan
 */
public class checkLogin {
    public Userr checkLogin (String userName , String password) {
            try {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Userr where UserName=:userName and convert(varchar(100), UserPassword)=:userPassword");
        query.setParameter("userName", userName);
        query.setParameter("userPassword", password);
        Userr user  = (Userr) query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return user;
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }
}
