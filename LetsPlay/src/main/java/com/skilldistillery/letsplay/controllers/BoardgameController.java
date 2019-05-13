package com.skilldistillery.letsplay.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.letsplay.data.LetsPlayDAO;
import com.skilldistillery.letsplay.entities.Boardgame;

@Controller
public class BoardgameController {

	@Autowired
	LetsPlayDAO letsPlayDAO;
	
	@RequestMapping(path="/", method = RequestMethod.GET)
	public String index(Model model) {
	  return "WEB-INF/index.jsp";
	  
	}
	
	@RequestMapping(path="getGameById.do", method = RequestMethod.GET)
	public ModelAndView getBoardgameById(@RequestParam("bgid") int bgid) {
		ModelAndView mv = new ModelAndView();
		Boardgame boardgame = letsPlayDAO.findById(bgid);
		mv.addObject("boardgame", boardgame);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	
	@RequestMapping(path="getGameByKeyword.do", method = RequestMethod.GET)
	public ModelAndView getBoardgameByKeyword(@RequestParam("keyword") String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Boardgame> list = letsPlayDAO.findByKeyword(keyword);
		mv.addObject("keyword", keyword);
		mv.addObject("list", list);
		mv.setViewName("WEB-INF/search.jsp");
		return mv;
	}
	@RequestMapping(path="getGameByNumPlayers.do", method = RequestMethod.GET)
	public ModelAndView getBoardgameByNumPlayers(@RequestParam("numPlayers") Integer numPlayers) {
		ModelAndView mv = new ModelAndView();
		List<Boardgame> list = letsPlayDAO.findByNumPlayers(numPlayers);
		mv.addObject("numPlayers", numPlayers);
		mv.addObject("list", list);
		mv.setViewName("WEB-INF/search.jsp");
		return mv;
	}
	
	@RequestMapping(path="browse.do", method = RequestMethod.GET)
	public ModelAndView browseGames() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", letsPlayDAO.findAll());
		mv.setViewName("WEB-INF/search.jsp");
		return mv;
	}
	
	@RequestMapping(path="chooseForm.do", method = RequestMethod.GET)
	public String chooseForm(@RequestParam("value") String value, Model model, Integer bgid) {
		if (value.equals("add")) {
			model.addAttribute("value", "add");
			return "WEB-INF/index.jsp";
		}else if (value.equals("change")) {
			model.addAttribute("boardgame", letsPlayDAO.findById(bgid));
			model.addAttribute("value", "change");
			return "WEB-INF/index.jsp";
		}else if (value.equals("delete")) {
			model.addAttribute("value", "delete");
			return "WEB-INF/index.jsp";
		}
		return null;
	}
	
	@RequestMapping(path="add.do", method = RequestMethod.POST)
	public ModelAndView addGame(Boardgame boardgame) {
		ModelAndView mv = new ModelAndView();
		letsPlayDAO.create(boardgame);
		mv.addObject("boardgame", boardgame);
		mv.addObject("message", "Game added!");
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	@RequestMapping(path="change.do", method = RequestMethod.POST)
	public ModelAndView changeGame(Boardgame boardgame) {
		ModelAndView mv = new ModelAndView();
		letsPlayDAO.change(boardgame, boardgame.getId());
		mv.addObject("boardgame", boardgame);
		mv.addObject("message", "Game updated!");
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	@RequestMapping(path="delete.do", method = RequestMethod.POST)
	public ModelAndView deleteGame(Integer bgid) {
		ModelAndView mv = new ModelAndView();
		letsPlayDAO.delete(bgid);
		mv.addObject("message", "Game deleted");
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}

	
	
}
