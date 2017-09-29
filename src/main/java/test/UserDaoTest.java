package test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import model.User;
import unit.ConnectionFactory;

public class UserDaoTest {
	Connection conn = ConnectionFactory.getInstance().makeConnection();
	UserDao userDao = new UserDaoImpl();
	User user = new User();

	public static void main(String[] args) {
		UserDaoTest udt = new UserDaoTest();
		// save();
		// delete();
		// update();
		udt.get();
	}

	public UserDaoTest() {
		try {
			conn.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void save() {
		try {
			user.setUsername("tom");
			user.setPassword("123456");
			user.setName("汤姆");
			user.setSex("女");
			user.setBirthday(Date.valueOf("2001-01-21"));
			userDao.save(conn, user);
			conn.commit();
			System.out.println("成功添加数据!");
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	private void delete() {
		long id = 5;
		user.setId(id);
		try {
			userDao.delete(conn, user);
			System.out.println("成功删除id为" + id + "的用户！");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void update() {
		long id = 6;
		try {
			user.setUsername("mahuateng");
			user.setPassword("123456");
			user.setName("马化腾");
			user.setSex("男");
			user.setBirthday(Date.valueOf("1975-01-21"));
			userDao.update(conn, id, user);
			conn.commit();
			System.out.println("成功添加数据!");
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	private void get() {
		String username = "wenxiaocheng";
		String password = "123456";
		user.setUsername(username);
		user.setPassword(password);
		try {
			ResultSet rs = userDao.get(conn, user);
			System.out.println("查询成功！用户信息如下：");
			System.out.println("id\t\t用户名\t\t密码\t\t名字\t\t性别\t\t生日");
			while (rs.next()) {
				System.out.println(rs.getLong("id") + "\t" + rs.getString("username") + "\t" + rs.getString("password")
						+ "\t" + rs.getString("name") + "\t" + rs.getString("sex") + "\t" + rs.getDate("birthday"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
