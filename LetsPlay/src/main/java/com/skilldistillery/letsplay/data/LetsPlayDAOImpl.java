package com.skilldistillery.letsplay.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.letsplay.entities.Boardgame;

@Transactional
@Service
public class LetsPlayDAOImpl implements LetsPlayDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Boardgame findById(int id) {
		String query = "select boardgame from Boardgame boardgame where id = ?";
		List<Boardgame> list = em.createQuery(query, Boardgame.class).setParameter(1, id).getResultList();
		return list.get(0);
	}

	@Override
	public List<Boardgame> findAll() {
		String query = "select boardgame from Boardgame boardgame";
		List<Boardgame> list = em.createQuery(query, Boardgame.class).getResultList();
		return list;
	}

	@Override
	public List<Boardgame> findByKeyword(String keyword) {
		String query = "select boardgame from Boardgame boardgame where title like ?";
		List<Boardgame> list = em.createQuery(query, Boardgame.class).setParameter(1, "%"+keyword+"%").getResultList();
		return list;
	}

	@Override
	public List<Boardgame> findByNumPlayers(int num) {
		String query = "select boardgame from Boardgame boardgame where minPlayers < ? and maxPlayers > ?";
		List<Boardgame> list = em.createQuery(query, Boardgame.class).setParameter(1, num).setParameter(2, num).getResultList();
		return list;
	}

}
