package com.bean;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "Video")
public class Video {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "Title")
	private String title;
	@Column(name = "Poster")
	private String poster;
	@Column(name = "Views")
	private Long views;
	@Column(name = "Description")
	private String description;
	@Column(name = "Active")
	private boolean active;
	@Column(name = "Link")
	private String link;
	
	@Override
	public String toString() {
		return "Video [id=" + id + ", title=" + title + ", poster=" + poster + ", views=" + views + ", description="
				+ description + ", active=" + active + ", link=" + link;
	}

	@OneToMany(mappedBy = "video")
	List<Watched> favorites;
	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
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

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		poster = poster;
	}

	public Long getViews() {
		return views;
	}

	public void setViews(Long views) {
		this.views = views;
	}

	public List<Watched> getFavorites() {
		return favorites;
	}

	public void setFavorites(List<Watched> favorites) {
		this.favorites = favorites;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

}
