package com.user.demo.dao;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.demo.pojo.User;

@Repository
public class UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	public User getUserByUsernameAndPassword(String username, String password) {
		Session session = null;
		try {
			session = sessionFactory.openSession();
			Query query = session.createQuery("from User where username = :param1 and password = :param2");
			query.setParameter("param1",username);
			query.setParameter("param2",password);
			User user = (User)query.uniqueResult();
			return user;			
			
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	}
	public List<User> getAllUser(){
		Session session = null;
		try {
			session = sessionFactory.openSession();
			Query query = session.createQuery("from User");
			return query.list();						
			
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	}
	public void saveUser(User user) {
		Session session = null;
		
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			
			session.save(user);
			
			session.getTransaction().commit();
			
			
		}catch(Exception e){
			e.printStackTrace();
			
			
		}finally {
			session.close();
		}
	}
	public void deleteUserById(Integer id) {
		Session session = null;
		
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			
			User user = (User) session.get(User.class, id);
			
			session.delete(user);
			
			session.getTransaction().commit();
			
			
		}catch(Exception e){
			e.printStackTrace();
			
			
		}finally {
			session.close();
		}
	}
	public void update(User user) {
		Session session = null;
		
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			
			session.update(user);
			
			session.getTransaction().commit();
			
		}catch(Exception e){
			e.printStackTrace();		
			
		}finally {
			session.close();
		}
	}
}
