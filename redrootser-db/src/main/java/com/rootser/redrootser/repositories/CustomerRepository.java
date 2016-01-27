package com.rootser.redrootser.repositories;



import org.springframework.data.jpa.repository.JpaRepository;

import com.rootser.redrootser.entities.Customer;


public interface CustomerRepository extends JpaRepository<Customer, Long>{

}
