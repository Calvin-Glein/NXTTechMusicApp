package com.nxttech.beans;

import java.util.ArrayList;

public class Room {
	private int roomID;
	private ArrayList<User> users;
	
	public Room(int roomID, ArrayList<User> users) {
		super();
		this.roomID = roomID;
		this.users = users;
	}
	
	
	public int getRoomID() {
		return roomID;
	}
	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}
	public ArrayList<User> getUsers() {
		return users;
	}
	public void setUsers(ArrayList<User> users) {
		this.users = users;
	}

	
}
