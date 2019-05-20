package com.daoImp;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.dao.loginValidate;
import com.domin.login;
import com.hibernateDomain.employee;
@Service("loginValidate")
@Repository
public class loginValidateDaoImp implements loginValidate {

 
 /*@Autowired
	SessionFactory sessionFactory;*/
 
	public String loginValidate(login log) {
		System.out.println(log);
		/*Session openSession = sessionFactory.openSession();
		Transaction tx = openSession.beginTransaction(); 
		Criteria ct=openSession.createCriteria(employee.class);
		Criterion id=Restrictions.eq("id", log.getId());
		Criterion pass=Restrictions.eq("password", log.getPassword());*/
		
		return "hello";
	}

}
