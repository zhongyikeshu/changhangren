package cn.yubo.chr.domain;

import java.sql.Timestamp;

/**
 * Borrow entity. @author MyEclipse Persistence Tools
 */

public class Borrow implements java.io.Serializable {

	// Fields

	private Integer borrowNum;
	private Book book;
	private User user;
	private String borrowTime;
	private String returnTime;

	// Constructors

	/** default constructor */
	public Borrow() {
	}

	/** minimal constructor */
	public Borrow(Integer borrowNum, String borrowTime, String returnTime) {
		this.borrowNum = borrowNum;
		this.borrowTime = borrowTime;
		this.returnTime = returnTime;
	}

	/** full constructor */
	public Borrow(Integer borrowNum, Book book, User user,
			String borrowTime, String returnTime) {
		this.borrowNum = borrowNum;
		this.book = book;
		this.user = user;
		this.borrowTime = borrowTime;
		this.returnTime = returnTime;
	}

	// Property accessors

	public Integer getBorrowNum() {
		return this.borrowNum;
	}

	public void setBorrowNum(Integer borrowNum) {
		this.borrowNum = borrowNum;
	}

	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getBorrowTime() {
		return this.borrowTime;
	}

	public void setBorrowTime(String borrowTime) {
		this.borrowTime = borrowTime;
	}

	public String getReturnTime() {
		return this.returnTime;
	}

	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}

}