package untill;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import model.User;

public class TestMyBatis {
	static SqlSessionFactory sqlSessionFactory = null;
	static {
		sqlSessionFactory = MyBatisUntil.getSqlSessionFactory();
	}

	public static void main(String[] args) {
		// testAdd();
		getUser();
	}

	public static void testAdd() {
		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			User user = new User("zhangsan", "123456", "man", "ahangsan", (Date) ft.parse("1995-08-09"));
			userMapper.insertUser(user);
			sqlSession.commit();
		} catch (ParseException e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}

	public static void getUser() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			User user = userMapper.getUser(1);
			System.out.println("id: " + user.getId() + "username: " + user.getUsername());
		} finally {
			sqlSession.close();
		}
	}
}
