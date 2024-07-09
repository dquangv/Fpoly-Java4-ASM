package com.bean;

import java.sql.Date;

public class Share {
	private int id;
	private int UserId;
	private int VideoId;
	private String Emails;
	private Date ShareDate;
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
	public String getEmails() {
		return Emails;
	}
	public void setEmails(String emails) {
		Emails = emails;
	}
	public Date getShareDate() {
		return ShareDate;
	}
	public void setShareDate(Date shareDate) {
		ShareDate = shareDate;
	}
	
	
}
