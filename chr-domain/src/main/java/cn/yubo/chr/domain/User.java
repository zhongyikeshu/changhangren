package cn.yubo.chr.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String phone;//手机号，也是唯一标识
	private String name;//名字
	private String nick;//昵称
	private String stuid;//学号
	private String address;//地址
	private String word;//个性签名
	private String head;//头像
	private String college;//学院
	private String major;//专业
	private Double reputation;//信誉度
	private String password;//密码
	private Set messages = new HashSet(0);
	private Set borrows = new HashSet(0);
	private Set books = new HashSet(0);
	private Set<Lost> losts = new HashSet();		//失物招领

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String phone) {
		this.phone = phone;
	}

	public User(String phone, String name, String nick, String stuid, String address, String word, String head,
			String college, String major, Double reputation, String password, Set messages, Set borrows, Set books) {
		
		this.phone = phone;
		this.name = name;
		this.nick = nick;
		this.stuid = stuid;
		this.address = address;
		this.word = word;
		this.head = head;
		this.college = college;
		this.major = major;
		this.reputation = reputation;
		this.password = password;
		this.messages = messages;
		this.borrows = borrows;
		this.books = books;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getStuid() {
		return stuid;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Double getReputation() {
		return reputation;
	}

	public void setReputation(Double reputation) {
		this.reputation = reputation;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public Set getBooks() {
		return books;
	}

	public void setBooks(Set books) {
		this.books = books;
	}

	public Set<Lost> getLosts() {
		return losts;
	}

	public void setLosts(Set<Lost> losts) {
		this.losts = losts;
	}


	
	
	
	
}