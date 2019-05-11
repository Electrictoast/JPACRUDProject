package com.skilldistillery.letsplay.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Boardgame {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	@Column(name="average_rating")
	private Double averageRating;
	@Column(name="min_players")
	private Integer minPlayers;
	@Column(name="max_players")
	private Integer maxPlayers;
	@Column(name="max_playtime")
	private Integer maxPlaytime;
	@Column(name="min_playtime")
	private Integer minPlaytime;
	@Column(name="release_year")
	private Integer releaseYear;
	@Column(name="age_range")
	private String ageRange;
	@Override
	public String toString() {
		return "Boardgame [id=" + id + ", title=" + title + ", averageRating=" + averageRating + ", minPlayers="
				+ minPlayers + ", maxPlayers=" + maxPlayers + ", maxPlaytime=" + maxPlaytime + ", minPlaytime="
				+ minPlaytime + ", releaseYear=" + releaseYear + ", ageRange=" + ageRange + "]";
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
	public Double getAverageRating() {
		return averageRating;
	}
	public void setAverageRating(Double averageRating) {
		this.averageRating = averageRating;
	}
	public Integer getMinPlayers() {
		return minPlayers;
	}
	public void setMinPlayers(Integer minPlayers) {
		this.minPlayers = minPlayers;
	}
	public Integer getMaxPlayers() {
		return maxPlayers;
	}
	public void setMaxPlayers(Integer maxPlayers) {
		this.maxPlayers = maxPlayers;
	}
	public Integer getMaxPlaytime() {
		return maxPlaytime;
	}
	public void setMaxPlaytime(Integer maxPlaytime) {
		this.maxPlaytime = maxPlaytime;
	}
	public Integer getMinPlaytime() {
		return minPlaytime;
	}
	public void setMinPlaytime(Integer minPlaytime) {
		this.minPlaytime = minPlaytime;
	}
	public Integer getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(Integer releaseYear) {
		this.releaseYear = releaseYear;
	}
	public String getAgeRange() {
		return ageRange;
	}
	public void setAgeRange(String ageRange) {
		this.ageRange = ageRange;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ageRange == null) ? 0 : ageRange.hashCode());
		result = prime * result + ((averageRating == null) ? 0 : averageRating.hashCode());
		result = prime * result + id;
		result = prime * result + ((maxPlayers == null) ? 0 : maxPlayers.hashCode());
		result = prime * result + ((maxPlaytime == null) ? 0 : maxPlaytime.hashCode());
		result = prime * result + ((minPlayers == null) ? 0 : minPlayers.hashCode());
		result = prime * result + ((minPlaytime == null) ? 0 : minPlaytime.hashCode());
		result = prime * result + ((releaseYear == null) ? 0 : releaseYear.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Boardgame other = (Boardgame) obj;
		if (ageRange == null) {
			if (other.ageRange != null)
				return false;
		} else if (!ageRange.equals(other.ageRange))
			return false;
		if (averageRating == null) {
			if (other.averageRating != null)
				return false;
		} else if (!averageRating.equals(other.averageRating))
			return false;
		if (id != other.id)
			return false;
		if (maxPlayers == null) {
			if (other.maxPlayers != null)
				return false;
		} else if (!maxPlayers.equals(other.maxPlayers))
			return false;
		if (maxPlaytime == null) {
			if (other.maxPlaytime != null)
				return false;
		} else if (!maxPlaytime.equals(other.maxPlaytime))
			return false;
		if (minPlayers == null) {
			if (other.minPlayers != null)
				return false;
		} else if (!minPlayers.equals(other.minPlayers))
			return false;
		if (minPlaytime == null) {
			if (other.minPlaytime != null)
				return false;
		} else if (!minPlaytime.equals(other.minPlaytime))
			return false;
		if (releaseYear == null) {
			if (other.releaseYear != null)
				return false;
		} else if (!releaseYear.equals(other.releaseYear))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	
	
	
}
