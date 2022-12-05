package com.hakim.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notes")
public class Note {
	@Id
	@GeneratedValue
	private int id;
	private String title;
	private String content;
	private Date addeddDate;
	
	
	public Note() {
		// TODO Auto-generated constructor stub
	}


	public Note(int id, String title, String content, Date addeddDate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.addeddDate = addeddDate;
	}


	public Note(String title, String content, Date addeddDate) {
		super();
		this.title = title;
		this.content = content;
		this.addeddDate = addeddDate;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getAddeddDate() {
		return addeddDate;
	}


	public void setAddeddDate(Date addeddDate) {
		this.addeddDate = addeddDate;
	}


	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", addeddDate=" + addeddDate + "]";
	}
	
	
	
}
