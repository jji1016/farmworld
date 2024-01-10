package com.farmworld.board.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farmworld.all.domain.Criteria;
import com.farmworld.all.domain.pageDTO;
import com.farmworld.board.domain.BoardVO;
import com.farmworld.board.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
@Log4j
public class BoardController {
	private final BoardService boardService;
	
	@GetMapping("/list")
	public String list(Criteria cri, Model model) {
		log.info("---- controller in list -----");
		log.info(cri);
		
		int total = boardService.getTotal(cri);
		pageDTO pageResult = new pageDTO(cri, total);
		model.addAttribute("pageMaker",pageResult);
		log.info("---- controller out list -----");
		log.info(total);

		return "board/board";
	}
	
	@ResponseBody
	@RequestMapping(value="/getList", method = RequestMethod.POST)
	public List<BoardVO> getList(Criteria cri){
		log.info("Ajax");
		log.info("getList -> Type : "+ cri.getType());
		log.info("getList -> Keyword : "+ cri.getKeyword());
		return boardService.searchList(cri);
	}
	
}
