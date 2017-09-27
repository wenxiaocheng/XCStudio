package unit;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFactory {
    private static String driver;
    private static String dbUrl;
    private static String user;
    private static String password;
    private static final ConnectionFactory CONNECTION_FACTORY = new ConnectionFactory();
    private Connection conn;

    static {
        Properties properties = new Properties();
        InputStream inputStream = ConnectionFactory.class.getResourceAsStream("/config/DBConfig.properties");
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        driver = properties.getProperty("mysql.driver");
        dbUrl = properties.getProperty("mysql.url") + "?" + properties.getProperty("mysql.zeroDateTimeBehavior") + "&" + properties.getProperty("mySql.useUnicode") + "&" + properties.getProperty("mySql.characterEncoding") + "&" + properties.getProperty("mysql.serverTimezone") + "&" + properties.getProperty("mysql.useSSL");
        user = properties.getProperty("mysql.user");
        password = properties.getProperty("mysql.password");
    }

    private ConnectionFactory() {
    }

    public static ConnectionFactory getInstance() {
        return CONNECTION_FACTORY;
    }

    public Connection makeConnection() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(dbUrl, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
