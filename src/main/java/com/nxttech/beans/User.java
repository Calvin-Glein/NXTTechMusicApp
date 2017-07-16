package com.nxttech.beans;

public class User {
	private int userID;
	private String username;
	private int score;

	public User() {

	}

	public User(int userID, String username) {
		super();
		this.userID = userID;
		this.username = username;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

}
