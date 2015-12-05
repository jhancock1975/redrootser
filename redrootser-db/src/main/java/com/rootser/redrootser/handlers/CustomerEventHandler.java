package com.rootser.redrootser.handlers;


import org.slf4j.Logger;
import org.springframework.data.rest.core.annotation.HandleBeforeCreate;
import org.springframework.data.rest.core.annotation.RepositoryEventHandler;
import org.springframework.stereotype.Component;

import com.rootser.redrootser.entities.Customer;
import com.rootser.redrootser.util.InjectLogger;

@Component
@RepositoryEventHandler(Customer.class)
public class CustomerEventHandler {
	private static @InjectLogger Logger logger;
	@HandleBeforeCreate
	public void handleCustomerSave(Customer customer){
		logger.info("handling customer save");
	}

}
