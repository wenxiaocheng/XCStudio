package untill;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFuctory {
	private static String driver;
	private static String dburl;
	private static String user;
	private static String password;
	private static final ConnectionFuctory CONNECTION_FUCTORY = new ConnectionFuctory();
	private Connection conn;
	static {
		Properties properties = new Properties();
		InputStream inputStream = ConnectionFuctory.class.getClassLoader()
				.getResourceAsStream("config/DBConfig.properties");
		try {
			properties.load(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("================ 配置文件读取错误！ ================");
		}
		driver = properties.getProperty("driver");
		dburl = properties.getProperty("dburl");
		user = properties.getProperty("user");
		password = properties.getProperty("password");
	}

	private ConnectionFuctory() {

	}

	public static ConnectionFuctory getInstence() {
		return CONNECTION_FUCTORY;
	}

	public Connection makeConnection() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(dburl, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
