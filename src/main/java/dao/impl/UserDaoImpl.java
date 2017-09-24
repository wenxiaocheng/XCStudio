package dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.UserDao;
import model.User;

public class UserDaoImpl implements UserDao {
	/**
	 * 保存用户信息
	 */
	public void save(Connection conn, User user) throws SQLException {
		PreparedStatement ps = conn
				.prepareCall("INSERT INTO user (username, password, name, sex, birthday) VALUES(?,?,?,?,?)");
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ps.setString(4, user.getName());
		ps.setString(3, user.getSex());
		ps.setDate(5, (Date) user.getBirthday());
		ps.execute();
	}

	/**
	 * 更新用户信息
	 */
	public void update(Connection conn, long id, User user) throws SQLException {
		PreparedStatement ps = conn.prepareCall(
				"UPDATE  user SET username = ?, password = ?, name = ?, sex = ?, birthday = ? WHERE id = ?");
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ps.setString(4, user.getName());
		ps.setString(3, user.getSex());
		ps.setDate(5, (Date) user.getBirthday());
		ps.setLong(6, id);
		ps.execute();
	}

	/**
	 * 删除用户信息
	 */
	public void delete(Connection conn, User user) throws SQLException {
		PreparedStatement ps = conn.prepareCall("DELETE FORM user WHERE id = ?");
		ps.setLong(1, user.getId());
		ps.execute();
	}

	/**
	 * 查询用户信息
	 */
	public ResultSet get(Connection conn, User user) throws SQLException {
		PreparedStatement ps = conn.prepareCall("SELECT * FORM user WHERE username = ? AND password = ?");
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		return ps.executeQuery();
	}

}
