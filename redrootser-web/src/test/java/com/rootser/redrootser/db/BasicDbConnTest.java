package com.rootser.redrootser.db;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rootser.redrootser.util.InjectLogger;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:test-context.xml" })
@Configuration
@PropertySource("classpath:db.properties")

public class BasicDbConnTest {

	private static @InjectLogger Logger logger;
	
	@Value("${db.username}")
	private String userName;
	
	@Value("${db.password}")
	private String password;
	
	@Value("${db.url}")
	private String url;
	
	@Value("${db.DriverClassName}")
	private String driverClassName;
	

	@Test
	public void testDbConn() {
		logger.info("Starting test");
		try {

			Class.forName(driverClassName);

		} catch (ClassNotFoundException e) {

			failMsg("no postgrsql jdbc driver found");
			return;

		}
		Connection connection = null;
		
		try {
			Properties props = new Properties();
			props.setProperty("user", this.userName);
			props.setProperty("password", this.password);
			connection = DriverManager.getConnection(this.url, props);

		} catch (SQLException e) {
			
			failMsg("Connection Failed! Check output console");

		}
		assertTrue("DriverManager returned null database connection", connection != null);

	}


	private void failMsg(String failMsg) {
		logger.error(failMsg);
		fail(failMsg);
	}

}
