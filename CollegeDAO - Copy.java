package com.infinite.college;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class CollegeDAO {
	
	
	SessionFactory sessionFactory;
	
	//generateCourseId
	
public String generateCourseId() {

		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Course.class);
		List<Course> courselist = cr.list();
		session.close();
		if(courselist.size()==0) {
			return "C001";
		}
		else {
		String id = courselist.get(courselist.size()-1).getCourseno();
		int id1 = Integer.parseInt(id.substring(1));
		id1++;
		String id2 = String.format("C%03d", id1);
		return id2;
		}
	
	}

    //AddCourseList

    public String addCourseList(Course course) {
	  
	    sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Course.class);
		String id = generateCourseId();
		course.setCourseno(id);
		Transaction transaction = session.beginTransaction();
		session.save(course);
		transaction.commit();
		session.close();
	  
		return "Course Added..";
	  
  }
    
    public String generateFbId() {
    
    	sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Feedback.class);
		List<Feedback> feedbacklist = cr.list();
		session.close();
		if(feedbacklist.size()==0) {
			return "F001";
		}
		else {
		String id = feedbacklist.get(feedbacklist.size()-1).getfId();
		int id1 = Integer.parseInt(id.substring(1));
		id1++;
		String id2 = String.format("F%03d", id1);
		return id2;
		}
	
    }
    
    //Feedback
    
    public String feedback(Feedback feedback){
    	sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Feedback.class);
		String id = generateFbId();
		feedback.setfId(id);
		Transaction transaction = session.beginTransaction();
		session.save(feedback);
		transaction.commit();
		session.close();
		return "Feedback Added..";
    	
    }
    
    //Search 
    
    
    
   //AddSubject 
    
    public String addSubject(Subjects subjects) {
    	sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Subjects.class);
		Transaction transaction = session.beginTransaction();
		session.save(subjects);
		transaction.commit();
		session.close();
	  
		return "Subjects Added..";
    	
    }

   //date
	public Date convertDate(java.util.Date dt) {
		java.sql.Date sqlDate = new java.sql.Date(dt.getTime());
		return sqlDate;
	}
	
	
}
