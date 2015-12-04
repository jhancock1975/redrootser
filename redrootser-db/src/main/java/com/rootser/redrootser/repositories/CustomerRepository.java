package com.rootser.redrootser.repositories;
/**
 * working curl examples:
 * 
 *  curl "http://localhost:8080/redrootser-db-0.0.1-SNAPSHOT/customers/search/findByLastName?lastName=Baggins"
 *  
 *  curl  -i -X POST -H "Content-Type:application/json" -d '{  "firstName" : "Frodo",  "lastName" : "Baggins" }' http://localhost:8080/redrootser-db-0.0.1-SNAPSHOT/customers/
 *  
 */

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.rootser.redrootser.entities.Customer;

@RepositoryRestResource(collectionResourceRel = "customers", path = "customers")
public interface CustomerRepository extends PagingAndSortingRepository<Customer, Long>{
	List<Customer> findByLastName(@Param("lastName") String name);

}
