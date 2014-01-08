package insertion_content;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBase {
	Connection con = null;
	String url = "jdbc:mysql://localhost:3306/";
	String dbname= "ksbka";
	String driver ="com.mysql.jdbc.Driver";
	String Username="root";
	String Password ="";
	public Connection getConnection() throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		Class.forName(driver).newInstance();
		con = DriverManager.getConnection(url+dbname,Username,Password);
		return con;
	}
}
