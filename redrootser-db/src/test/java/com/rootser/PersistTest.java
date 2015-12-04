package com.rootser;

import java.sql.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rootser.redrootser.entities.Customer;
import com.rootser.redrootser.repositories.CustomerRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = RedrootserDbApplication.class)
public class PersistTest {

	@Autowired
	CustomerRepository r;
	@Test
	public void test() {
		Customer c = new Customer("john", "hancock", new Date(System.currentTimeMillis()), "j@h.com");
		r.save(c);
		
	}

}
