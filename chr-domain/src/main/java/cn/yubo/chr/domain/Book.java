package cn.yubo.chr.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String name;
	private String press;
	private String author;
	private String photo;
	private String exist;
	private Category category;
	private Set messages = new HashSet(0);
	private Set borrows = new HashSet(0);
	private String deleted;
	private String description;
	
	
	
	public Book() {
		
	}
	public Book(Integer id, User user, String name, String press, String author, String photo, String exist,
			Category category, Set messages, Set borrows,String deleted,String description) {
		
		this.id = id;
		this.user = user;
		this.name = name;
		this.press = press;
		this.author = author;
		this.photo = photo;
		this.exist = exist;
		this.category = category;
		this.messages = messages;
		this.borrows = borrows;
		this.deleted = deleted;
		this.description = description;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getExist() {
		return exist;
	}
	public void setExist(String exist) {
		this.exist = exist;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Set getMessages() {
		return messages;
	}
	public void setMessages(Set messages) {
		this.messages = messages;
	}
	public Set getBorrows() {
		return borrows;
	}
	public void setBorrows(Set borrows) {
		this.borrows = borrows;
	}
	public String getDeleted() {
		return deleted;
	}
	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}