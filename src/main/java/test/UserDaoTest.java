package test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import model.User;
import untill.ConnectionFuctory;

public class UserDaoTest {

	public static void main(String[] args) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Connection conn = null;
		conn = ConnectionFuctory.getInstence().makeConnection();
		try {
			conn.setAutoCommit(false);
			UserDao userDao = new UserDaoImpl();
			User tom = new User();
			tom.setUsername("tom");
			tom.setPassword("123456");
			tom.setName("汤姆");
			tom.setSex("女");
			tom.setBirthday(sdf.parse("2001-01-21"));
			userDao.save(conn, tom);
			conn.commit();
			System.out.println("成功添加数据!");
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
