package user.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import user.MyRs;
import user.Relationship;
import user.User;

public class UserDAO {
	public void add(User u) {
		@SuppressWarnings("unused")
		List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.save(u);
		s.getTransaction().commit();
		s.close();
	}

	public User get(int id) {
		User result = null;
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		result = (User) s.get(User.class, id);
		s.close();
		sf.close();
		return result;
	}

	public void delete(int id) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		User p = (User) s.get(User.class, id);
		s.delete(p);
		s.getTransaction().commit();
		s.close();
		sf.close();
	}

	public void update(User u) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.update(u);
		s.getTransaction().commit();
		s.close();
		sf.close();
	}

	@SuppressWarnings("unchecked")
	public List<User> listUser() {
		List<User> result = new ArrayList<User>();
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from User u");
		result = q.list();
		s.close();
		sf.close();
		return result;
	}

    //-----------------------------------------------
    @SuppressWarnings("unchecked")
	public List<User> searchUser(String name,String school) {//
        List<User> result = new ArrayList<User>( );
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        Query q= (Query) s.createQuery("from User where name = :name")
                    .setParameter("name", name);
        int x=0;
        int y=0;
        if(null==school||school.equals("")||school.equals("--请选择学校--")) {
        	y=1;
        }
        if(name==null || name.equals("")){
        	x=1;
        }
        if(x==0&&y==0) {
        	
        }else if(x==0&&y==1) {
        	 q= (Query) s.createQuery("from User where name = :name")
                    .setParameter("name", name);
        }else if(x==1&&y==0) {
		q = (Query) s.createQuery("from User where school=:school")
                .setParameter("school", school);
        }else if(x==1&&y==1) {
    		q = (Query) s.createQuery("from User where name = :name and school=:school")
                    .setParameter("name", name).setParameter("school", school);
        }
		
		result=q.list();
        s.close();
        sf.close();
        return result;
    }
    public User showUser(String email) {//我的信息数据
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        User result = new User();
 
        Query q = s.createQuery("from User u where u.email = :email")
                .setParameter("email", email);
        List<User> r = q.list();
        for(User u:r) {
        	result=u;
        }
        //result=(User) s.get(User.class, email);
        s.close();
        sf.close();
        return result;
    }
    public Relationship showRs(String email1,String email2) {//我的信息数据
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        Relationship result = new Relationship();
 
        Query q = s.createQuery("from Relationship u where u.email1 = :email1 and u.email2=:email2")
                .setParameter("email1", email1).setParameter("email2", email2);
        List<Relationship> r = q.list();
        for(Relationship u:r) {
        	result=u;
        }
        //result=(User) s.get(User.class, email);
        s.close();
        sf.close();
        return r.get(0);
    }
    public List<MyRs> showUserTcr(String email1) {//
        List<MyRs> result = new ArrayList();
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("select new user.MyRs(u.name,r.email2,u.phone,"
        		+ "r.start,r.end) from Relationship as r,User as u "
        		+ "where r.email1 = :email1 and r.email2=u.email and r.state=1")
                .setParameter("email1", email1);
        result = q.list();
        
        s.close();
        sf.close();
        return result;
    }
    public List<MyRs> showUserStu(String email2) {//
        List<MyRs> result = new ArrayList<MyRs>();
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        
        Query q = s.createQuery("select new user.MyRs(u.name,r.email1,u.phone,"
        		+ "r.start,r.end) from Relationship r,User u "
        		+ "where r.email1=u.email and r.email2 = :email2 and r.state=1")
                .setParameter("email2", email2);
        result = q.list();
        s.close();
        sf.close();
        return result;
    }
    public void delRs(String email1,String email2) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
 
        Query q = s.createQuery("from Relationship r "
        		+ "where r.email2 = :email2 and r.email1=:email1");
        q.setParameter("email1",email1);
        q.setParameter("email2", email2);
        List<Relationship> list=q.list();
        for(Relationship p:list) {
        	s.delete(p);
        }
        s.getTransaction().commit();
        s.close();
        sf.close();
    }
    public void addRs(Relationship tcr) {
    	SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
        Query q = s.createQuery("select r from Relationship r "
        		+ "where r.email2 = :email2 and r.email1=:email1");
        q.setParameter("email1",tcr.getEmail1());
        q.setParameter("email2",tcr.getEmail2());
        List<Relationship> r=q.list();
        if(r.size()==0&&!tcr.getEmail1().equals(tcr.getEmail2())) {
        	s.save(tcr);
        }
        s.getTransaction().commit();
        s.close();
        sf.close();
    }
    public void addStuEnd(String email1,String email2,String date) {
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
 
        Query q = s.createQuery("select r from Relationship r "
        		+ "where r.email2 = :email2 and r.email1=:email1");
        q.setParameter("email1",email1);
        q.setParameter("email2", email2);
        List<Relationship> list=q.list();
        for(Relationship p:list) {
        	p.setEnd(date);
        	s.update(p);
        }
        s.getTransaction().commit();
        s.close();
        sf.close();
    }
    public void addTcrStart(String email2,String email1,String addDate) {
        List<User> result = new ArrayList();
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
 
        Query q = s.createQuery("select r from Relationship r "
        		+ "where r.email2 = :email2 and r.email1=:email1");
        q.setParameter("email1",email1);
        q.setParameter("email2", email2);
        List<Relationship> list=q.list();
        for(Relationship p:list) {
        	p.setStart(addDate);
        	s.update(p);
        }
        s.getTransaction().commit();
        s.close();
        sf.close();
    }
    @SuppressWarnings("unchecked")
	public List<User> myMessages(String email2) {//
        List<User> result = new ArrayList();
 
        SessionFactory sf = new Configuration().configure()
                .buildSessionFactory();
        Session s = sf.openSession();
 
        Query q = s.createQuery("select u from Relationship as r,User as u "
        		+ "where r.email2 = :email2 and r.email1=u.email and r.state=0")
                .setParameter("email2", email2);
        result = q.list();
        
        s.close();
        sf.close();
        return result;
    }
	public void updateRs(Relationship u) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session s = sf.openSession();
		s.beginTransaction();
		s.update(u);
		s.getTransaction().commit();
		s.close();
		sf.close();
	}
	//----------------------------------------------
    
}
