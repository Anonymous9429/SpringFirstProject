package com.crud.common;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String title;
	private String singer;
	private String genre;
	private String writer;
	private String composer;
	private String release;
	private String label;
	private int cnt;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger(){
		return singer;
	}
	public void setSinger(String singer){
		this.singer=singer;
	}
	public String getGenre(){
		return genre;
	}
	public void setGenre(String genre){
		this.genre = genre;
	}

	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getComposer(){
		return composer;
	}
	public void setComposer(String composer){
		this.composer = composer;
	}
	public String getRelease(){
		return release;
	}
	public void setRelease(String release){
		this.release = release;
	}
	public String getLabel(){
		return label;

	}
	public void setLabel(String label){
		this.label = label;

	}


	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}



}
