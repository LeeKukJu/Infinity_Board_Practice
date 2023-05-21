package kr.or.ddit.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.board.service.BoardService;
import kr.or.ddit.board.vo.FoodBoardVO;
import kr.or.ddit.mapper.BoardMapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<FoodBoardVO> getBoardList() {
		return mapper.getBoardList();
	}

}
