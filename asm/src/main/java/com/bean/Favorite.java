package com.bean;

import java.sql.Date;

public class Favorite {
	private int id;
	private int UserId;
	private int VideoId;
	private Date LikeDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getVideoId() {
		return VideoId;
	}
	public void setVideoId(int videoId) {
		VideoId = videoId;
	}
	public Date getLikeDate() {
		return LikeDate;
	}
	public void setLikeDate(Date likeDate) {
		LikeDate = likeDate;
	}
	
	
}
