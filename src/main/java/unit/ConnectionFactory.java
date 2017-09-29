package unit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFactory {
    private final static ConnectionFactory CONNECTION_FACTORY = new ConnectionFactory();
    private Connection conn = null;
    private Properties properties = new PropValuesConfig().getPropValues("config/DBConfig.properties");
    private String driver = properties.getProperty("mysql.driver");
    private String dbUrl = properties.getProperty("mysql.url") + "?" + "useUnicode=" + properties.getProperty("mysql.useUnicode") + "&characterEncoding=" + properties.getProperty("mysql.characterEncoding") + "&serverTimezone=" + properties.getProperty("mysql.serverTimezone") + "&useSSL=" + properties.getProperty("mysql.useSSL");
    private String user = properties.getProperty("mysql.user");
    private String password = properties.getProperty("mysql.password");

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
