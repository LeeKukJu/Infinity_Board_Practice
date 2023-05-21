package kr.or.ddit.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.board.service.BoardService;
import kr.or.ddit.board.vo.FoodBoardVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/list")
	public String boardList(Model model) {
		
		List<FoodBoardVO> boardList = service.getBoardList();
		
		model.addAttribute("boardList", boardList);
		
		return "board/list";
	}
	
	@GetMapping("/appendList/{rowNum}")
	@ResponseBody
	public List<FoodBoardVO> appendList(@PathVariable int rowNum) {
		List<FoodBoardVO> boardList = service.getAppendList(rowNum);
		return boardList;
	}
}
