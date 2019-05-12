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
	public Boardgame change(Boardgame boardgame, Integer bgid) {
		Boardgame updated = em.find(Boardgame.class, bgid);

		updated.setTitle(boardgame.getTitle());
		updated.setAverageRating(boardgame.getAverageRating());
		updated.setMinPlayers(boardgame.getMinPlayers());
		updated.setMaxPlayers(boardgame.getMaxPlayers());
		updated.setMinPlaytime(boardgame.getMinPlaytime());
		updated.setMaxPlaytime(boardgame.getMaxPlaytime());
		updated.setAgeRange(boardgame.getAgeRange());
		updated.setReleaseYear(boardgame.getReleaseYear());

	
		return updated;
	}
	@Override
	public void delete(Integer id) {
	Boardgame boardgame = em.find(Boardgame.class, id);
	em.remove(boardgame);
		
	}
	
	@Override
	public Boardgame create(Boardgame boardgame) {

		em.persist(boardgame);
		em.flush();

		return boardgame;
	}
	
	@Override
	public Boardgame findById(int id) {
	
		return em.find(Boardgame.class, id);
	}

	@Override
	public List<Boardgame> findAll() {
		String query = "select boardgame from Boardgame boardgame";
		List<Boardgame> list = em.createQuery(query, Boardgame.class).getResultList();
		return list;
	}

	@Override
	public List<Boardgame> findByKeyword(String keyword) {
		String query = "select boardgame from Boardgame boardgame where title like :keyword";
		List<Boardgame> list = em.createQuery(query, Boardgame.class).setParameter("keyword", "%"+keyword+"%").getResultList();
		return list;
	}

	@Override
	public List<Boardgame> findByNumPlayers(int num) {
		String query = "select boardgame from Boardgame boardgame where minPlayers < :num and maxPlayers > :num";
		List<Boardgame> list = em.createQuery(query, Boardgame.class).setParameter("num", num).getResultList();
		return list;
	}

}
