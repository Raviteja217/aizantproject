package com.aizant.DAO;

import java.util.List;

import com.aizant.model.User;

public interface UserDAO {
	public List<User> list();

	public User get(int id);
	public User getByUsername(String username);
	
	public void saveOrUpdate(User user);

	public void delete(int id);

	public List getAllUsers();
	
	public User getByPin(String pin);

	public void deleteUser(int id);

	public List<User> getUserByPage(int pageid, int total);

	public int getPageCount();

	public User getPassword(String password);


}
