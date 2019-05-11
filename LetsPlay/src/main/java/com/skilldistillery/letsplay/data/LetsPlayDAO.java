package com.skilldistillery.letsplay.data;

import java.util.List;

import com.skilldistillery.letsplay.entities.Boardgame;

public interface LetsPlayDAO {
		
	
	public Boardgame findById(int id);
	public List<Boardgame> findAll();
	public List<Boardgame> findByKeyword(String keyword);
	public List<Boardgame> findByNumPlayers(int num);
	

}
