package com.daoImp;

import org.springframework.stereotype.Service;

import com.dao.registerDao;
import com.domin.register;
@Service("registerDao")
public class registerDaoImp implements registerDao{

	public String registerEmp(register regis) {
		System.out.println(regis);
		return "okay done";
	}

}
