package com.niit.womenaccessories;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfig;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Product;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
       System.out.println( "Hello World!" );
       ApplicationContext context=new AnnotationConfigApplicationContext(DBConfig.class,ProductDaoImpl.class);      
       ProductDao productDao=(ProductDao)context.getBean("productDao");
       
/*       productDao.deleteProduct(11);*/
       	

    }
}
