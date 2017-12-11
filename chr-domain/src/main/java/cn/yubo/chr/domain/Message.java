package cn.yubo.chr.domain;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Message  implements java.io.Serializable{
	
	private Integer messageNum;//自己的id,-1时表示叶子节点
	private Book book;		//所在书籍
	private Message message;//父评论
	private User user;		//评论者
	private String messageContent;//评论内容
	private Timestamp messageTime;//评论时间
	private Set messages = new HashSet(0);//子评论
	private Integer rootNumber;			//这个是每条树的唯一标识，表示该节点所在根
	
    
   
	public Message() {
		
	}
	

	public Message(Integer messageNum, Book book, Message message, User user, String messageContent,
			Timestamp messageTime, Set messages, Integer rootNumber) {
		super();
		this.messageNum = messageNum;
		this.book = book;
		this.message = message;
		this.user = user;
		this.messageContent = messageContent;
		this.messageTime = messageTime;
		this.messages = messages;
		this.rootNumber = rootNumber;
	}


	public Integer getMessageNum() {
		return messageNum;
	}

	public void setMessageNum(Integer messageNum) {
		this.messageNum = messageNum;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	

	public Timestamp getMessageTime() {
		return messageTime;
	}

	public void setMessageTime(Timestamp messageTime) {
		this.messageTime = messageTime;
	}


	public Set getMessages() {
		return messages;
	}


	public void setMessages(Set messages) {
		this.messages = messages;
	}


	public Integer getRootNumber() {
		return rootNumber;
	}

	public void setRootNumber(Integer rootNumber) {
		this.rootNumber = rootNumber;
	}

	
	public void setChildren(Message child)
    {//记录子节点
        this.messages.add(child);
    }
  
    public boolean isRoot()
    {//判断是否为根
        return this.message == null;
    }

    public boolean isLeaf()
    {//判断是否为叶子节点
        return this.messageNum == -1;
    }

    public List<Message> getChildrenList()
    {//获取该节点的的所有子节点集合表
    	List list = new ArrayList<Message>();
    	list.addAll(this.messages);
    	return list;
    }

}