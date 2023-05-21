package kr.or.ddit.board.service;

import java.util.List;

import kr.or.ddit.board.vo.FoodBoardVO;

public interface BoardService {

	public List<FoodBoardVO> getBoardList();

	public List<FoodBoardVO> getAppendList(int rowNum);
	
}
