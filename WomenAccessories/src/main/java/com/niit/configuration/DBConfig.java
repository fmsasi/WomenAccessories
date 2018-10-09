package com.niit.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.dao.CustomerDao;
import com.niit.dao.CustomerDaoImpl;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Authorities;
import com.niit.model.BillingAddress;
import com.niit.model.CartItem;
import com.niit.model.Category;
import com.niit.model.Customer;
import com.niit.model.CustomerOrder;
import com.niit.model.Product;
import com.niit.model.ShippingAddress;
import com.niit.model.User;

@Configurable
@EnableTransactionManagement
@ComponentScan("com.niit")
public class DBConfig {

	@Bean(name = "dataSource")
	public static DataSource getDataSource() {
		System.out.println("Entering DataSource Bean Creation Method");
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/Vellore1");
		dataSource.setUsername("sasi");
		dataSource.setPassword("sasi");
		System.out.println("DataSource bean " + dataSource);

		return dataSource;
	}

	@Bean(name = "sessionFactory")
	public static SessionFactory sessionFactory() {
		System.out.println("Entering sessionFactory Creation Method");
		LocalSessionFactoryBuilder lsf = new LocalSessionFactoryBuilder(getDataSource());
		Properties hibernateProperties = new Properties();
		hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		

		lsf.addProperties(hibernateProperties);

		Class classes[] = new Class[] { Product.class, Category.class, User.class, Customer.class, Authorities.class,
				BillingAddress.class, ShippingAddress.class,CartItem.class,CustomerOrder.class };
		System.out.println("SessionFactory bean" + lsf);
		return lsf.addAnnotatedClasses(classes).buildSessionFactory();
	}

	@Bean(name = "productDao")
	public ProductDao getProduct() {
		System.out.println("Product Bean Created");
		return new ProductDaoImpl();
	}

	@Bean(name = "customerDao")
	public CustomerDao getCustomer() {
		System.out.println("Product Bean Created");
		return new CustomerDaoImpl();
	}
	
	@Bean
	public HibernateTemplate hibernateTemplate() {
		return new HibernateTemplate(sessionFactory());
	}
	
	@Bean
	public HibernateTransactionManager hibTransManagement() {
		return new HibernateTransactionManager(sessionFactory());
	}

}
