package com.rootser.redrootser.handlers;


import org.slf4j.Logger;
import org.springframework.data.rest.core.annotation.HandleBeforeSave;

import com.rootser.redrootser.entities.Customer;
import com.rootser.redrootser.util.InjectLogger;

public class CustomerEventHandler {
	private static @InjectLogger Logger logger;
	@HandleBeforeSave
	public void handleCustomerSave(Customer customer){
		logger.debug("handling customer save");
	}

}
