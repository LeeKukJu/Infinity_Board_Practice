package kr.or.ddit.board.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FoodBoardVO {
	private int boardNo;
	private String writer;
	private String contents;
	private String resName;
	private String foodType;
	private String streetAddr;
	private String resAddr;
	private int views;
	private Date writeDate;
	private Date modifyDate;
	private int commentNum;
	private int rating;
}
