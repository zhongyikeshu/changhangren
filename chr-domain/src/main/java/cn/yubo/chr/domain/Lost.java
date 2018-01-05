package cn.yubo.chr.domain;

import java.util.Date;

public class Lost {
	
	/*
	 * `l_id` int(11) NOT NULL AUTO_INCREMENT,
	  `l_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	  `l_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
	  `l_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	  `l_date` datetime NOT NULL,
	  `l_lost_pick` int(11) NOT NULL,
	  `l_user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 */

	private String id;
	private String title;
	private String image;
	private String details;
	private String date;
	private Integer lostOrPick;
	private User user;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getLostOrPick() {
		return lostOrPick;
	}

	public void setLostOrPick(Integer lostOrPick) {
		this.lostOrPick = lostOrPick;
	}


	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Lost [title=" + title + ", image=" + image + ", details=" + details + ", date=" + date + "]";
	}
	
	
}
