package com.crud.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import javax.swing.tree.TreePath;

@Repository
public class BoardDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;





	private final String BOARD_INSERT = "insert into BOARD (title, writer, content) values (?,?,?)";
	private final String BOARD_UPDATE = "update BOARD set title=?, writer=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete from BOARD  where seq=?";
	private final String BOARD_GET = "select * from BOARD  where seq=?";
	private final String BOARD_LIST = "select * from BOARD order by seq desc";


	public int insertBoard(BoardVO vo) {

		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		return jdbcTemplate.update(BOARD_INSERT, new Object[]{vo.getTitle(), vo.getWriter(), vo.getContent()});
	}
	// 글 삭제
	public int deleteBoard(int id) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		return jdbcTemplate.update(BOARD_DELETE, new Object[]{id});
	}
	public int updateBoard(BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		return jdbcTemplate.update(BOARD_UPDATE, new Object[]{vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getSeq()});

	}	
	
	public BoardVO getBoard(int seq) {
		return jdbcTemplate.queryForObject(BOARD_GET,
				new BeanPropertyRowMapper<BoardVO>(BoardVO.class),	new Object[]{seq}
				);
	}



	public List<BoardVO> getBoardList(){
		return jdbcTemplate.query(BOARD_LIST, new RowMapper<BoardVO>(){
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			BoardVO data = new BoardVO();
			data.setSeq(rs.getInt("seq"));
			data.setTitle(rs.getString("title"));
			data.setRegdate(rs.getDate("regdate"));
			data.setWriter(rs.getString("writer"));
			return data;

			}
		});
	}

	}

