package com.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
@EnableWebMvc
@ComponentScan("com.dao")
@ComponentScan(basePackages = "com.*")
@Configuration
public class Config {
	@Bean
	public InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		System.out.println("testing config class");
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;

	}
	@Bean
	public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	@Bean 
	/*public DataSource dataSource(@Value("${oracle.driverClass}") String className, @Value("${oracle.url}")String url, @Value("${oracle.username}")String username, @Value("${oracle.password}")String password) {
	*/	
	public DataSource dataSource() {
	System.out.println("oracle.jdbc.driver.OracleDriver");
		DriverManagerDataSource dc=new DriverManagerDataSource();
		dc.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		dc.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
		dc.setUsername("system");
		dc.setPassword("root");
		return dc;
	}
	@Bean
	public LocalSessionFactoryBean localSessionFactoryBean() {
		LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();
		sessionFactoryBean.setDataSource(dataSource());
		sessionFactoryBean.setPackagesToScan("com.hibernateDomain");
	    sessionFactoryBean.setHibernateProperties(getProperty());
		return sessionFactoryBean;
		
	}
	private Properties getProperty() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.PostgreSQL9Dialect");
	    properties.put("hibernate.hbm2ddl.auto", "update");
	    properties.put("hibernate.connection.autocommit", "false");
		return properties;
	}
	@Bean
	public HibernateTransactionManager hibernateTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager htx = new HibernateTransactionManager(sessionFactory);
		return htx;
		
	}
	@Bean
	public HibernateTemplate hibernateTemplate(SessionFactory sessionFactory) {
		HibernateTemplate template = new HibernateTemplate(sessionFactory);
		template.setCheckWriteOperations(false);
		
		return template;
		
	}

}
