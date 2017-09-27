package service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import untill.ConnectionFuctory;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import model.User;

public class CheckUserService {
	private UserDao userDao = new UserDaoImpl();

	public boolean check(User user) {
		Connection conn = null;
		ResultSet resultSet = null;
		conn = ConnectionFuctory.getInstence().makeConnection();
		try {
			conn.setAutoCommit(false);
			resultSet = userDao.get(conn, user);
			while (resultSet.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			try {
				resultSet.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return false;
	}
}
