package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
@Controller
public class CustomerController {
	@Autowired
	private CustomerDao customerDao;
	@RequestMapping(value="/all/registrationform")
	public String getRegistrationForm(Model model){
		model.addAttribute("customer",new Customer());
		return "registrationform";
	}
	@RequestMapping(value="/all/registercustomer")
	public String registerCustomer(@ModelAttribute(name="customer") Customer customer,Model model){

		
		
		
		//check if email is unique
		if(!customerDao.isEmailUnique(customer.getUser().getEmail())){
			model.addAttribute("error","Email id already exists...please choose diffrent email id");
			return "registrationform";
		}
			
		
		//Call DAO to persist customer details
		customerDao.registerCustomer(customer);
		return "login";
	}
	
	
}
