package com.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "Watched", uniqueConstraints = { @UniqueConstraint(columnNames = { "videoId", "userId" }) })
public class Watched {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;
	@ManyToOne
	@JoinColumn(name = "videoId")
	private Video video;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "watchDate")
	private Date watchDate = new Date();
	@Column(name = "isLiked")
	private boolean isLiked;
	@Temporal(TemporalType.DATE)
	private Date LikeDate = new Date();

	@Override
	public String toString() {
		return "Watched [id=" + id + ", user=" + user + ", video=" + video + ", watchDate=" + watchDate + ", isLiked="
				+ isLiked + ", LikeDate=" + LikeDate + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getWatchDate() {
		return watchDate;
	}

	public void setWatchDate(Date watchDate) {
		this.watchDate = watchDate;
	}

	public boolean isLiked() {
		return isLiked;
	}

	public void setLiked(boolean isLiked) {
		this.isLiked = isLiked;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public Date getLikeDate() {
		return LikeDate;
	}

	public void setLikeDate(Date likeDate) {
		LikeDate = likeDate;
	}

}
