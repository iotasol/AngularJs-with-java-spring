package com.demo.security;

import com.demo.model.user.User;

public class LoggedOnUser extends User {

	public void load(User user) {
		this.setCreationOn(user.getCreationOn());
		this.setEmailAddress(user.getEmailAddress());
		this.setEnabled(user.isEnabled());
		this.setFirstName(user.getFirstName());
		this.setId(user.getId());
		this.setLastName(user.getLastName());
		this.setLastSignon(user.getLastSignon());
		this.setPassword(user.getPassword());
		this.setRole(user.getRole());
		this.setUpdatedOn(user.getUpdatedOn());
		this.setUsername(user.getUsername());
	}
}
