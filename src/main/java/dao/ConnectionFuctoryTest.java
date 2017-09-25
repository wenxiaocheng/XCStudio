package dao;

import java.sql.Connection;
import java.sql.SQLException;

import untill.ConnectionFuctory;

public class ConnectionFuctoryTest {

	public static void main(String[] args) throws SQLException {
		ConnectionFuctory cf = ConnectionFuctory.getInstence();
		Connection conn = cf.makeConnection();
		System.out.println(conn.getAutoCommit());
	}
}
