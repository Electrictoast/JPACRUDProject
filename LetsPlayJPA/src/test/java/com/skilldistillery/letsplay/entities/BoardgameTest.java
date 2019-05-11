package com.skilldistillery.letsplay.entities;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;


public class BoardgameTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Boardgame boardgame;
	
	@BeforeAll
	public static void setUpAll() {
		emf = Persistence.createEntityManagerFactory("LetsPlay");
		
	}
	
	@BeforeEach
	  public void setUp() throws Exception {
	    em = emf.createEntityManager();
	    boardgame = em.find(Boardgame.class, 1);
	  }
	
	  @AfterEach
	  public void tearDown() throws Exception {
	     em.close();
	     boardgame = null;
	  }
	  
	  @AfterAll
	  public static void closeAll() {
		  emf.close();
		  
	  }
	  
	@Disabled
	@Test
	void test() {
		fail("not yet implemented");
	}
	
	@Test
	void test_boardgame_mappings() {
		assertEquals(7.78227, boardgame.getAverageRating());
		assertEquals("10+", boardgame.getAgeRange());
	
	}
}