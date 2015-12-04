package com.rootser.redrootser.util;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import static org.junit.Assert.assertTrue;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:test-context.xml" })
public class LoggerTest {
	private  static @InjectLogger Logger logger;
	@Test
	/**
	 * tests InjectLogger annotation
	 */
	public void test() {
		assertTrue("logger is null", logger != null);
	}

}
