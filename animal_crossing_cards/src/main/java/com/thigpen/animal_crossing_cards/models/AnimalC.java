package com.thigpen.animal_crossing_cards.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "characters")
public class AnimalC {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Size(min = 2, max = 20)
	private String name;

	@NotNull
	@Size(min = 2, max = 20)
	private String personality;

	@NotNull
	@Size(min = 2, max = 20)
	private String bday;

	@NotNull
	@Size(min = 2, max = 20)
	private String species;

	@NotNull
	@Size(min = 2, max = 20)
	private String gender;

	@NotNull
	@Size(min = 2, max = 20)
	private String hobby;

	@NotNull
	@Size(min = 2, max = 200)
	private String catchphrase;

	@NotNull
	@Size(min = 2, max = 100)
	private String icon_url;

	@NotNull
	@Size(min = 2, max = 100)
	private String img_url;

	@NotNull
	@Size(min = 2, max = 20)
	private String bubble_color;

	@NotNull
	@Size(min = 2, max = 20)
	private String text_color;

	@NotNull
	@Size(min = 2, max = 200)
	private String saying;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

//    constructors
	public AnimalC() {

	}

	public AnimalC(String name, String personality, String bday, String species, String gender, String hobby,
			String catchphrase, String icon_url, String img_url, String bubble_color, String text_color,
			String saying) {
		this.name = name;
		this.personality = personality;
		this.bday = bday;
		this.species = species;
		this.gender = gender;
		this.hobby = hobby;
		this.catchphrase = catchphrase;
		this.icon_url = icon_url;
		this.img_url = img_url;
		this.bubble_color = bubble_color;
		this.text_color = text_color;
		this.saying = saying;

	}

//    get and set

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPersonality() {
		return personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}

	public String getBday() {
		return bday;
	}

	public void setBday(String bday) {
		this.bday = bday;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getCatchphrase() {
		return catchphrase;
	}

	public void setCatchphrase(String catchphrase) {
		this.catchphrase = catchphrase;
	}

	public String getIcon_url() {
		return icon_url;
	}

	public void setIcon_url(String icon_url) {
		this.icon_url = icon_url;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public String getBubble_color() {
		return bubble_color;
	}

	public void setBubble_color(String bubble_color) {
		this.bubble_color = bubble_color;
	}

	public String getText_color() {
		return text_color;
	}

	public void setText_color(String text_color) {
		this.text_color = text_color;
	}

	public String getSaying() {
		return saying;
	}

	public void setSaying(String saying) {
		this.saying = saying;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

}
