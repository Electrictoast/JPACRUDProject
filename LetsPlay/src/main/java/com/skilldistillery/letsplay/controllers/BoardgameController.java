package com.skilldistillery.letsplay.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.skilldistillery.letsplay.data.LetsPlayDAO;

@Controller
public class BoardgameController {

	@Autowired
	LetsPlayDAO letsPlayDAO;
}
