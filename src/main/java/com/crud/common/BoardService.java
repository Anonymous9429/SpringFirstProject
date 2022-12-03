package com.crud.common;

import com.crud.common.BoardVO;

import java.util.List;

public interface BoardService {
    public int insertBoard(BoardVO vo);
    public int deleteBoard(int seq);
    public int updateBoard(BoardVO vo);
    public BoardVO getBoard(int seq);
    public List<BoardVO> getBoardList();
}
