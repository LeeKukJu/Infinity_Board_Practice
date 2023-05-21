package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.board.vo.FoodBoardVO;

public interface BoardMapper {

	public List<FoodBoardVO> getBoardList();

	public List<FoodBoardVO> getAppendList(int rowNum);

}
